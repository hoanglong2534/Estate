package com.estate.myEstate.api;


import com.estate.myEstate.model.dto.BuildingRequestDTO;
import com.estate.myEstate.model.dto.BuildingResponseDTO;
import com.estate.myEstate.service.Interface.BuildingService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/building")
@RequiredArgsConstructor
public class BuildingAPIController {

    private final BuildingService buildingService;

    @GetMapping("/search")
    public List<BuildingResponseDTO> searchBuildings(@ModelAttribute BuildingRequestDTO buildingRequestDTO) {
        return buildingService.searchBuilding(buildingRequestDTO);
    }


}
