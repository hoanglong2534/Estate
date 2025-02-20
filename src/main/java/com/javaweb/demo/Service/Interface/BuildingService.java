package com.javaweb.demo.Service.Interface;

import com.javaweb.demo.DTO.BuildingDTO;
import com.javaweb.demo.DTO.BuildingRequestDTO;

import java.util.List;

public interface BuildingService {
    List<BuildingDTO> searchBuilding(BuildingRequestDTO buildingRequestDTO);
}
