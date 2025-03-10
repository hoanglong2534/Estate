package com.estate.myEstate.service.Interface;

import com.estate.myEstate.model.dto.BuildingRequestDTO;
import com.estate.myEstate.model.dto.BuildingResponeDTO;

import java.util.List;

public interface BuildingService {
    List<BuildingResponeDTO> searchBuilding(BuildingRequestDTO buildingRequestDTO);
}
