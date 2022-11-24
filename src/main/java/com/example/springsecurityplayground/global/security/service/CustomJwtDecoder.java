package com.example.springsecurityplayground.global.security.service;

import lombok.RequiredArgsConstructor;
import org.springframework.security.oauth2.jwt.Jwt;
import org.springframework.security.oauth2.jwt.JwtDecoder;
import org.springframework.security.oauth2.jwt.JwtException;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class CustomJwtDecoder implements JwtDecoder {

    private final JwtUtilService jwtUtilService;

    @Override
    public Jwt decode(String token) throws JwtException {
        return jwtUtilService.parseJwt(token);
    }
}
