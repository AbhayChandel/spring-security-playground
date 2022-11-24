package com.example.springsecurityplayground.global.security.data;

import lombok.Getter;
import org.springframework.data.annotation.Id;
import org.springframework.data.relational.core.mapping.Column;
import org.springframework.data.relational.core.mapping.Table;

@Table(name = "users")
@Getter
public class User {

    @Id
    private long id;
    private String username;
    private String password;
    @Column("id")
    private UserStatus userStatus;

}
