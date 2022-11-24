package com.example.springsecurityplayground.global.security.data;

import org.springframework.data.annotation.Id;

public class UserStatus {

    @Id
    private int id;
    private String status;
}
