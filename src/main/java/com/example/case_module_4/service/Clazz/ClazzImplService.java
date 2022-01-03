package com.example.case_module_4.service.Clazz;

import com.example.case_module_4.model.Clazz;
import com.example.case_module_4.repository.IClazzRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;

import java.awt.print.Pageable;
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
        return clazzRepository.findById(id);
    }

    @Override
    public void save(Clazz clazz) {
clazzRepository.save(clazz);
    }

    @Override
    public void remove(Long id) {
clazzRepository.deleteById(id);
    }

    @Override
    public Page<Clazz> findByNameContaining(Pageable pageable, String name) {
        return clazzRepository.findByNameContaining(pageable,name);
    }


}
