package com.example.case_module_4.service.impl;

import com.example.case_module_4.model.Student;
import com.example.case_module_4.model.TuitionFee;
import com.example.case_module_4.repository.StudentRepository;
import com.example.case_module_4.repository.TuitionFeeRepository;
import com.example.case_module_4.service.ITuitionFeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;
@Service
public class TuitionFeeService implements ITuitionFeeService {
    @Autowired
    private TuitionFeeRepository tuitionFeeRepository;
    @Autowired
    private StudentRepository studentRepository;


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

    @Override
    public Iterable<TuitionFee> findAllByStudent(Student student) {
        return tuitionFeeRepository.findAllByStudent(student);
    }

    @Override
    public Iterable<TuitionFee> findAllByStudentId(Long id) {
        Optional <Student> studentOptional = studentRepository.findById(id);
        return studentOptional.map(student -> tuitionFeeRepository.findAllByStudent(student)).orElse(null);
    }

    @Override
    public Iterable<TuitionFee> findAllByStudentIdAndPaid(Long id, boolean paid) {
        Optional <Student> studentOptional = studentRepository.findById(id);
        return studentOptional.map(student -> tuitionFeeRepository.findAllByStudentAndPaidOrderByName(student,paid)).orElse(null);
    }

}
