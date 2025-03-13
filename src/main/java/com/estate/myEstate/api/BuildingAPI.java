package com.estate.myEstate.api;


import com.estate.myEstate.model.dto.BuildingAddDTO;
import com.estate.myEstate.model.dto.BuildingRequestDTO;
import com.estate.myEstate.model.dto.BuildingResponseDTO;
import com.estate.myEstate.model.entity.BuildingEntity;
import com.estate.myEstate.service.Interface.BuildingService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/building")
@RequiredArgsConstructor
public class BuildingAPI {

    private final BuildingService buildingService;

    @GetMapping("/search")
    public List<BuildingResponseDTO> searchBuildings(@ModelAttribute BuildingRequestDTO buildingRequestDTO) {
        return buildingService.searchBuilding(buildingRequestDTO);
    }

    @DeleteMapping("/delete/{id}")
    public ResponseEntity<?> deleteBuilding(@PathVariable Long id) {
        boolean delete = buildingService.deleteBuilding(id);
        if(delete){
            return ResponseEntity.ok("Delete Success!");
        }
        else{
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Delete Failed!");
        }
    }

    @DeleteMapping("/delete-all")
    public ResponseEntity<?> deleteAllBuildings(@RequestBody List<Long> ids) {
        boolean delete = buildingService.deleteBuildings(ids);
        if(delete){
            return ResponseEntity.ok("Delete Success!");
        }
        else{
            return ResponseEntity.status(HttpStatus.NOT_FOUND).body("Delete Failed!");
        }
    }

    @PostMapping("/addBuilding")
    public ResponseEntity<BuildingEntity> addBuilding(@RequestBody BuildingAddDTO buildingAddDTO) {
        BuildingEntity buildingEntity = buildingService.addBuilding(buildingAddDTO);
        return  ResponseEntity.status(HttpStatus.CREATED).body(buildingEntity);
    }

}
