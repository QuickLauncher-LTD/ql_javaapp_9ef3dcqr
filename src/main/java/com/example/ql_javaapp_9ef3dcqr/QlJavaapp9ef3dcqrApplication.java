package com.example.ql_javaapp_9ef3dcqr;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@RestController
public class QlJavaapp9ef3dcqrApplication {

    @RequestMapping("/")
    String home() {
        return "Hello World!";
    }
    
    public static void main(String[] args) {
        SpringApplication.run(QlJavaapp9ef3dcqrApplication.class, args);
    }

}
