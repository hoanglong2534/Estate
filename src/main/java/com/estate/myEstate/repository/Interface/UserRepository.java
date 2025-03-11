package com.estate.myEstate.repository.Interface;

import com.estate.myEstate.model.entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<UserEntity, Integer> {
}
