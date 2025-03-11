package com.estate.myEstate.service.Impl;

import com.estate.myEstate.model.entity.UserEntity;
import com.estate.myEstate.repository.Interface.UserRepository;
import com.estate.myEstate.service.Interface.UserService;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    private final UserRepository userRepository;

    public UserServiceImpl(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @Override
    public List<UserEntity> getUsers() {
        return userRepository.findAll();
    }
}
