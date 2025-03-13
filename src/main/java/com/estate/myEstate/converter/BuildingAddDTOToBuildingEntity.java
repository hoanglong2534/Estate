package com.estate.myEstate.converter;


import com.estate.myEstate.model.dto.BuildingAddDTO;
import com.estate.myEstate.model.entity.BuildingEntity;
import lombok.RequiredArgsConstructor;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Component;

@Component
@RequiredArgsConstructor
public class BuildingAddDTOToBuildingEntity {

    private final ModelMapper modelMapper;

    public BuildingEntity convert(BuildingAddDTO dto) {
        return modelMapper.map(dto, BuildingEntity.class);
    }
}
