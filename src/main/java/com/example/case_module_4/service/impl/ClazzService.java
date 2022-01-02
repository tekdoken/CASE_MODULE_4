package com.example.case_module_4.service.impl;

import com.example.case_module_4.model.Clazz;
import com.example.case_module_4.repository.ClazzRepository;
import com.example.case_module_4.service.IClazzService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;
@Service
public class ClazzImplService implements IClazzService {
    @Autowired
    private ClazzRepository clazzRepository;

    @Override
    public Iterable<Clazz> findAll() {
        return clazzRepository.findAll();
    }

    @Override
    public Optional<Clazz> findById(Long id) {
        return Optional.empty();
    }

    @Override
    public Optional<Clazz> save(Clazz clazz) {
clazzRepository.save(clazz);
    }

    @Override
    public void remove(Long id) {

    }
}
