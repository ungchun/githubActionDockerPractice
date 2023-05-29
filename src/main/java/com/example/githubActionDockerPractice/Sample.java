package com.example.githubActionDockerPractice;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Sample {
    @RequestMapping("/hello")
    public String greeting() {
        return "hello";
    }
}
