package com.tutorial.gcp.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class WebController {
    @GetMapping("/")
    public String testEndPoint(){
        return "Hello World";
    }
}
