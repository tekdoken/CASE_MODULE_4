package com.example.case_module_4.service.Clazz;

import com.example.case_module_4.model.Clazz;
import com.example.case_module_4.repository.IClazzRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;
@Service
public class ClazzImplService implements IClazzService{
    @Autowired
    private IClazzRepository clazzRepository;

    @Override
    public Iterable findAll() {
        return clazzRepository.findAll();
    }

    @Override
    public Optional findById(Long id) {
        return Optional.empty();
    }

    @Override
    public void save(Clazz clazz) {
clazzRepository.save(clazz);
    }

    @Override
    public void remove(Long id) {

    }
}
