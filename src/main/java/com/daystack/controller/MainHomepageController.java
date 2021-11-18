package com.daystack.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainHomepageController {

    @GetMapping("/")
    public String welcomePage() {

        return "index";
    }
}
