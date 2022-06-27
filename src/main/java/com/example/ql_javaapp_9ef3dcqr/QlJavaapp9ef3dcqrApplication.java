package com.example.ql_javaapp_9ef3dcqr;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController

public class QlJavaapp9ef3dcqrApplication {

    @RequestMapping("/")
    String home() {
        return "LG Uplus Deployment Successfully finished";
    }

    public static void main(String[] args) {
        SpringApplication.run(QlJavaapp9ef3dcqrApplication.class, args);
    }

}
