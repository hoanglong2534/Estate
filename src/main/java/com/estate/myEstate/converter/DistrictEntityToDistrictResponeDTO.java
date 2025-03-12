package com.estate.myEstate.converter;

import com.estate.myEstate.model.dto.DistrictResponeDTO;
import com.estate.myEstate.model.entity.DistrictEntity;

import java.util.List;
import java.util.stream.Collectors;

public class DistrictEntityToDistrictResponeDTO {

    public static DistrictResponeDTO toDTO(DistrictEntity entity) {
        return new DistrictResponeDTO(entity.getId(), entity.getName(), entity.getCode());
    }

    public static List<DistrictResponeDTO> toDTOList(List<DistrictEntity> entities) {
        return entities.stream().map(DistrictEntityToDistrictResponeDTO::toDTO).collect(Collectors.toList());
    }
}
