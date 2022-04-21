package com.example.springcloudk8sdemo;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.net.UnknownHostException;

@SpringBootApplication
@RestController
public class SpringCloudK8sDemoApplication {
    @Value("${messageProp}")
    private String messageProp;

    public static void main(String[] args) {
        SpringApplication.run(SpringCloudK8sDemoApplication.class, args);
    }

    @GetMapping("")
    public String helloWorld()  {

        return "Hello from " + messageProp;
    }

}
