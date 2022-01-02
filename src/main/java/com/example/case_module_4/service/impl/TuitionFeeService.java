package com.example.case_module_4.service.impl;

import com.example.case_module_4.model.TuitionFee;
import com.example.case_module_4.repository.TuitionFeeRepository;
import com.example.case_module_4.service.ITuitionFeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;
@Service
public class TuitionFeeService implements ITuitionFeeService {
    @Autowired
    private TuitionFeeRepository tuitionFeeRepository;
    @Override
    public Iterable<TuitionFee> findAll() {
        return tuitionFeeRepository.findAll();
    }

    @Override
    public Optional<TuitionFee> findById(Long id) {
        return tuitionFeeRepository.findById(id);
    }

    @Override
    public TuitionFee save(TuitionFee tuitionFee) {
        return tuitionFeeRepository.save(tuitionFee);
    }

    @Override
    public void remove(Long id) {

    }
}
