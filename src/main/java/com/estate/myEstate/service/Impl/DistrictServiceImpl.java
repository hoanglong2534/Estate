package com.estate.myEstate.service.Impl;

import com.estate.myEstate.model.entity.DistrictEntity;
import com.estate.myEstate.repository.Interface.DistrictRepisitory;
import com.estate.myEstate.service.Interface.DistrictService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DistrictServiceImpl implements DistrictService {
    private final DistrictRepisitory districtRepisitory;

    public DistrictServiceImpl(DistrictRepisitory districtRepisitory) {
        this.districtRepisitory = districtRepisitory;
    }

    @Override
    public List<DistrictEntity> getDistricts() {
        return districtRepisitory.findAll();
    }
}