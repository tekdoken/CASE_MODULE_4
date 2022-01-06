package com.example.case_module_4.service.impl;

import com.example.case_module_4.model.Clazz;
import com.example.case_module_4.model.Parent;
import com.example.case_module_4.model.Student;
import com.example.case_module_4.repository.ClazzRepository;
import com.example.case_module_4.repository.StudentRepository;
import com.example.case_module_4.service.IStudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class StudentService implements IStudentService {

    @Autowired
    private StudentRepository studentRepository;

    @Autowired
    private ClazzRepository clazzRepository;

    @Override
    public Iterable<Student> findAll() {
        return studentRepository.findAll();
    }

    @Override
    public Optional<Student> findById(Long id) {
        return studentRepository.findById(id);
    }

    @Override
    public Student save(Student student) {
        return studentRepository.save(student);
    }

    @Override
    public void remove(Long id) {
        studentRepository.deleteById(id);
    }

    @Override
    public Iterable<Student> findAllByParent(Parent parent) {
        return studentRepository.findAllByParent(parent);
    }

    @Override
    public Iterable<Student> findAllByActive(boolean active) {
        return studentRepository.findAllByActive(active);
    }

    @Override
    public Iterable<Student> findAllByClazz(Clazz clazz) {
        return studentRepository.findAllByClazz(clazz);
    }
    @Override
    public Iterable<Student> findAllByClazzId(Long id) {
        Clazz clazz = clazzRepository.findById(id).get();
        return studentRepository.findAllByClazz(clazz);
    }
}
