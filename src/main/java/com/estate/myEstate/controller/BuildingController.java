package com.estate.myEstate.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BuildingController {

    @GetMapping("/")
    public String index() {
        return "client/index";
    }
    @GetMapping("/about")
    public String about() {
        return "client/about";
    }
    @GetMapping("/agents")
    public String agents() {
        return "client/agents";
    }
    @GetMapping("/contact")
    public String contact() {
        return "client/contact";
    }
    @GetMapping("/properties")
    public String properties() {
        return "client/properties";
    }
    @GetMapping("/property-single")
    public String propertySingle() {
        return "client/property-single";
    }
    @GetMapping("/service-details")
    public String serviceDetails() {
        return "client/service-details";
    }
    @GetMapping("/services")
    public String services() {
        return "client/services";
    }
}

