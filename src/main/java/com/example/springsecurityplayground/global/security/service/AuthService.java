package com.example.springsecurityplayground.global.security.service;

import com.example.springsecurityplayground.global.security.controller.LoginDto;
import lombok.RequiredArgsConstructor;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class AuthService {

    private final UserDetailsService userDetailsService;
    private final PasswordEncoder passwordEncoder;
    private final JwtUtilService jwtUtilService;

    public String authenticate(LoginDto loginDto) {
        UserDetails user = userDetailsService.loadUserByUsername(loginDto.getUsername());
        if (passwordEncoder.matches(loginDto.getPassword(), user.getPassword())) {
            return jwtUtilService.generateJwt(user.getUsername());
        }
        throw new BadCredentialsException("Username or Password incorrect");
    }
}
