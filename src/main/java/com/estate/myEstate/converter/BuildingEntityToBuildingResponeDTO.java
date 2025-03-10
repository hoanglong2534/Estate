package com.estate.myEstate.converter;

import com.estate.myEstate.model.dto.BuildingResponseDTO;
import com.estate.myEstate.model.entity.BuildingEntity;
import com.estate.myEstate.model.entity.RentAreaEntity;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.stream.Collectors;

@Component
public class BuildingEntityToBuildingResponeDTO {
    @Autowired
    private ModelMapper modelMapper;

    public BuildingResponseDTO convertBuildingDTO(BuildingEntity k) {
        BuildingResponseDTO buildingDTO = modelMapper.map(k, BuildingResponseDTO.class);

        List<RentAreaEntity> rentAreaEntities = k.getRentAreaEntities();
        String rentarea = rentAreaEntities.stream().map(it -> it.getValue().toString()).collect(Collectors.joining(","));

        buildingDTO.setAddress(k.getStreet() + "," + k.getWard() + "," + k.getDistrictEntity().getName());
        buildingDTO.setRentArea(rentarea);

        return buildingDTO;
    }
}
