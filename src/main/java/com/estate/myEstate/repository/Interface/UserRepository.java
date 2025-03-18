package com.estate.myEstate.repository.Interface;

import com.estate.myEstate.model.entity.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface UserRepository extends JpaRepository<UserEntity, Integer> {
    List<UserEntity> findByFullname(String fullname);

    Optional<UserEntity> findByUsername(String username);

}
