package com.estate.myEstate.service.Interface;

import com.estate.myEstate.model.entity.DistrictEntity;

import java.util.List;
import java.util.Optional;

public interface DistrictService {
    List<DistrictEntity> getDistricts();

    Optional<DistrictEntity> getDistrictByName(String name); // Tìm quận theo tên

    DistrictEntity findOrCreateDistrict(String name);
}
