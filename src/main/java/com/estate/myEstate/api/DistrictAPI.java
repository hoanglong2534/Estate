package com.estate.myEstate.api;

import com.estate.myEstate.converter.DistrictEntityToDistrictResponeDTO;
import com.estate.myEstate.model.dto.DistrictResponeDTO;
import com.estate.myEstate.model.entity.DistrictEntity;
import com.estate.myEstate.service.Interface.DistrictService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/api/districts")
public class DistrictAPI {

    private final DistrictService districtService;

    public DistrictAPI(DistrictService districtService) {
        this.districtService = districtService;
    }

    @GetMapping
    public List<DistrictResponeDTO> getDistricts() {
        List<DistrictEntity> districtEntities= districtService.getDistricts();
        return DistrictEntityToDistrictResponeDTO.toDTOList(districtEntities);
    }
}
