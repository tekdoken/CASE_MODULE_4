package com.example.case_module_4.service.impl;

import com.example.case_module_4.model.Role;
import com.example.case_module_4.repository.RoleRepository;
import com.example.case_module_4.service.IRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;
@Service
public class RoleService implements IRoleService {

    @Autowired
    private RoleRepository roleRepository;

    @Override
    public Iterable<Role> findAll() {
        return roleRepository.findAll();
    }

    @Override
    public Optional<Role> findById(Long id) {
        return roleRepository.findById(id);
    }

    @Override
    public Role save(Role role) {
        return roleRepository.save(role);
    }

    @Override
    public void remove(Long id) {

    }

    @Override
    public Role findByName(String name) {
        return roleRepository.findByName(name);
    }
}
