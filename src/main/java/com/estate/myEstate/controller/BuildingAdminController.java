package com.estate.myEstate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BuildingAdminController {

    @GetMapping("/sign-in")
    public String signIn() {
        return "admin/sign-in";
    }

    @GetMapping("/dashboard")
    public String dashboard() {
        return "admin/dashboard";
    }

    @GetMapping("/tables")
    public String tables() {
        return "admin/tables";
    }

    @GetMapping("/add")
    public String add() {
        return "admin/add";
    }

    @GetMapping("/edit")
    public String edit() {
        return "admin/edit";
    }


}
