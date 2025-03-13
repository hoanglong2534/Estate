package com.estate.myEstate.repository.Interface;

import com.estate.myEstate.model.entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface UserRepository extends JpaRepository<UserEntity, Integer> {
    List<UserEntity> findByFullname(String fullname);

}
