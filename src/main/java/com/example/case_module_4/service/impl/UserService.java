package com.example.case_module_4.service.impl;

import com.example.case_module_4.model.Parent;
import com.example.case_module_4.service.IUserService;
import org.springframework.stereotype.Service;

import java.util.Optional;
@Service
public class UserService implements IUserService {
    @Override
    public Iterable<Parent> findAll() {
        return null;
    }

    @Override
    public Optional<Parent> findById(Long id) {
        return Optional.empty();
    }

    @Override
    public Parent save(Parent parent) {
        return null;
    }

    @Override
    public void remove(Long id) {

    }
}
