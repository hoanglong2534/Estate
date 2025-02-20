package com.javaweb.demo.Controller;

import com.javaweb.demo.DTO.BuildingDTO;
import com.javaweb.demo.DTO.BuildingRequestDTO;
import com.javaweb.demo.Service.Interface.BuildingService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController

public class BuildingAPI {
    private final BuildingService buildingService;

    public BuildingAPI(BuildingService buildingService) {
        this.buildingService = buildingService;
    }

    @GetMapping("/building/search")
    public ResponseEntity<List<BuildingDTO>> searchBuilding(
            @ModelAttribute BuildingRequestDTO buildingRequestDTO,
            @RequestParam(name = "buildingtype", required = false) List<String> buildingtype) {
        buildingRequestDTO.setBuildingtype(buildingtype);
        List<BuildingDTO> buildings = buildingService.searchBuilding(buildingRequestDTO);
        return ResponseEntity.ok(buildings);
    }
}
