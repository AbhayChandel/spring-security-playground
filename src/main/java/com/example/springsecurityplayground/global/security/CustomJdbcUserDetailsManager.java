package com.example.springsecurityplayground.global.security;

import com.example.springsecurityplayground.global.security.data.User;
import com.example.springsecurityplayground.global.security.data.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

import java.util.ArrayDeque;

@Component
@RequiredArgsConstructor
public class CustomJdbcUserDetailsManager implements UserDetailsService {

    private final UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        User user = userRepository.findUserByUsername(username);
        if(user == null){
            throw new UsernameNotFoundException("User with username " + username + " not found.");
        }

        return new org.springframework.security.core.userdetails.User(user.getUsername(), user.getPassword(),
                new ArrayDeque<>());
    }


}
