package com.example.case_module_4.service.impl;

import com.example.case_module_4.model.Clazz;
import com.example.case_module_4.repository.ClazzRepository;
import com.example.case_module_4.service.IClazzService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class ClazzService implements IClazzService {
    @Autowired
    private ClazzRepository clazzRepository;

    @Override
    public Iterable<Clazz> findAll() {
        return clazzRepository.findAll();
    }

    @Override
    public Optional<Clazz> findById(Long id) {
        return clazzRepository.findById(id);
    }

    @Override
    public Clazz save(Clazz clazz) {
        return clazzRepository.save(clazz);
    }

    @Override
    public void remove(Long id) {

    }

    @Override
    public Page<Clazz> findAll(Pageable pageable) {
        return clazzRepository.findAll(pageable);
    }
}
