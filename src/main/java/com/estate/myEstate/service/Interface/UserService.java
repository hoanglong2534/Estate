package com.estate.myEstate.service.Interface;

import com.estate.myEstate.model.entity.UserEntity;

import java.util.List;
import java.util.Optional;

public interface UserService {
    List<UserEntity> getUsers();

    Optional<UserEntity> findByUsername(String username);
}
