package com.estate.myEstate.service.Interface;

import com.estate.myEstate.model.dto.BuildingRequestDTO;
import com.estate.myEstate.model.dto.BuildingResponseDTO;

import java.util.List;
import java.util.ListResourceBundle;

public interface BuildingService {
    List<BuildingResponseDTO> searchBuilding(BuildingRequestDTO buildingRequestDTO);

    boolean deleteBuilding(Long id);

    boolean deleteBuildings(List<Long> ids);
}
