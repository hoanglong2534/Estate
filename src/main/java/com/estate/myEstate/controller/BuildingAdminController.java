package com.estate.myEstate.controller;

import com.estate.myEstate.model.dto.BuildingRequestDTO;
import com.estate.myEstate.model.dto.BuildingResponseDTO;
import com.estate.myEstate.model.entity.DistrictEntity;
import com.estate.myEstate.model.entity.UserEntity;
import com.estate.myEstate.service.Interface.BuildingService;
import com.estate.myEstate.service.Interface.DistrictService;
import com.estate.myEstate.service.Interface.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class BuildingAdminController {

    private final BuildingService buildingService;
    private final DistrictService districtService;
    private final UserService userService;

    public BuildingAdminController(BuildingService buildingService, DistrictService districtService, UserService userService) {
        this.buildingService = buildingService;
        this.districtService = districtService;
        this.userService = userService;
    }

    @GetMapping("/sign-in")
    public String signIn() {
        System.out.println("signinnnn");
        return "admin/sign-in";
    }

    @GetMapping("/dashboard")
    public String dashboard() {
        return "admin/dashboard";
    }

    @GetMapping("/tables")
    public ModelAndView tables(@ModelAttribute BuildingRequestDTO buildingRequestDTO) {
        ModelAndView mav = new ModelAndView("admin/tables");
        //danh sách tòa nhà
        List<BuildingResponseDTO> buildingResponseDTOList = buildingService.searchBuilding(new BuildingRequestDTO());
        mav.addObject("buildingList", buildingResponseDTOList);

        //danh sách quận
        List<DistrictEntity> districtList = districtService.getDistricts();
        mav.addObject("districtList", districtList);

        //danh sách nhân viên
        List<UserEntity> userList = userService.getUsers();
        mav.addObject("userList", userList);

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
