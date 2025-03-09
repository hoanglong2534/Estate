package com.estate.myEstate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BuildingAdminController {

    @GetMapping("/sign-in")
    public String signIn() {
        return "admin/sign-in";
    }
}
