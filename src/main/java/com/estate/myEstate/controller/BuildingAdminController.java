package com.estate.myEstate.controller;

import com.estate.myEstate.model.dto.BuildingRequestDTO;
import com.estate.myEstate.model.dto.BuildingResponseDTO;
import com.estate.myEstate.service.Interface.BuildingService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class BuildingAdminController {

    private final BuildingService buildingService;

    public BuildingAdminController(BuildingService buildingService) {
        this.buildingService = buildingService;
    }

    @GetMapping("/sign-in")
    public String signIn() {
        return "admin/sign-in";
    }

    @GetMapping("/dashboard")
    public String dashboard() {
        return "admin/dashboard";
    }

    @GetMapping("/tables")
    public ModelAndView tables() {
        ModelAndView mav = new ModelAndView("admin/tables");
        List<BuildingResponseDTO> buildingResponseDTOList = buildingService.searchBuilding(new BuildingRequestDTO());
        mav.addObject("buildingList", buildingResponseDTOList);
        return mav;
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
