package com.estate.myEstate.service.Interface;

import com.estate.myEstate.model.dto.BuildingRequestDTO;
import com.estate.myEstate.model.dto.BuildingResponseDTO;

import java.util.List;

public interface BuildingService {
    List<BuildingResponseDTO> searchBuilding(BuildingRequestDTO buildingRequestDTO);
}
