package com.example.springsecurityplayground.global.security.service;

import com.auth0.jwt.JWT;
import com.auth0.jwt.JWTVerifier;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.interfaces.DecodedJWT;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.oauth2.jwt.Jwt;
import org.springframework.stereotype.Service;

import java.time.Instant;


@Service
public class JwtUtilService {

    @Value("${jwt.secret}")
    private String jwtSecret;

    public String generateJwt(String username) {
        return JWT.create()
                .withIssuer("auth0")
                .withClaim("sub", username)
                .withExpiresAt(Instant.now().plusSeconds(300))
                .sign(getAlgorithm());

    }

    public Jwt parseJwt(String token) {

        JWTVerifier jwtVerifier = JWT.require(getAlgorithm())
                .acceptNotBefore(Instant.now().toEpochMilli())
                .build();
        DecodedJWT decodedJWT = jwtVerifier.verify(token);
        return Jwt.withTokenValue(token)
                .header("typ", decodedJWT.getHeaderClaim("typ"))
                .header("alg", decodedJWT.getHeaderClaim("alg"))
                .claim("sub", decodedJWT.getClaim("sub"))
                .build();

    }

    private Algorithm getAlgorithm() {
        return Algorithm.HMAC256(jwtSecret);
    }
}
