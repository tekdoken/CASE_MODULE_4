package com.example.case_module_4.service.impl;

import com.example.case_module_4.model.Parent;
import com.example.case_module_4.model.User;
import com.example.case_module_4.repository.ParentRepository;
import com.example.case_module_4.service.IParentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.Optional;
@Service
public class ParentService implements IParentService {
    @Autowired
    private ParentRepository parentRepository;

    @Override
    public Iterable<Parent> findAll() {
        return parentRepository.findAll();
    }

    @Override
    public Optional<Parent> findById(Long id) {
        return parentRepository.findById(id);
    }

    @Override
    public Parent save(Parent parent) {
        return parentRepository.save(parent);
    }

    @Override
    public void remove(Long id) {

    }


    @Override
    public Optional<Parent> findByUser(User user) {
        return parentRepository.findByUser(user);
    }
}
