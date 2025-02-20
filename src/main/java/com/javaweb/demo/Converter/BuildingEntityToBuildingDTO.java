package com.javaweb.demo.Converter;

import com.javaweb.demo.DTO.BuildingDTO;
import com.javaweb.demo.Repository.Entity.BuildingEntity;
import com.javaweb.demo.Repository.Entity.RentAreaEntity;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.stream.Collectors;

@Component
public class BuildingEntityToBuildingDTO {
    @Autowired
    private ModelMapper modelMapper;

    public BuildingDTO convertBuildingDTO(BuildingEntity k) {
        BuildingDTO buildingDTO = modelMapper.map(k, BuildingDTO.class);

        List<RentAreaEntity> rentAreaEntities = k.getRentAreaEntities();
        String rentarea = rentAreaEntities.stream().map(it -> it.getValue().toString()).collect(Collectors.joining(","));

        buildingDTO.setAddress(k.getStreet() + "," + k.getWard() + "," + k.getDistrictEntity().getName());
        buildingDTO.setRentArea(rentarea);

        return buildingDTO;
    }
}
