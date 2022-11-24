package com.example.springsecurityplayground.global;

import lombok.Getter;
import lombok.Setter;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;

@ConfigurationProperties(prefix = "spring.datasource")
@Configuration("DataSourceProperties")
@Getter
@Setter
public class DataSourceProperties {
    private String driverClassName;
    private String url;
    private String username;
    private String password;
}
