package com.example.case_module_4.service.impl;

import com.example.case_module_4.model.Score;
import com.example.case_module_4.model.Student;
import com.example.case_module_4.repository.RoleRepository;
import com.example.case_module_4.repository.ScoreRepository;
import com.example.case_module_4.repository.StudentRepository;
import com.example.case_module_4.service.IScoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;
@Service
public class ScoreService implements IScoreService {
    @Autowired
    private ScoreRepository scoreRepository;
    @Autowired
    private StudentRepository studentRepository;

    @Override
    public Iterable<Score> findAll() {
        return scoreRepository.findAll();
    }

    @Override
    public Optional<Score> findById(Long id) {
        return scoreRepository.findById(id);
    }

    @Override
    public Score save(Score score) {
        return scoreRepository.save(score);
    }

    @Override
    public void remove(Long id) {
    }

    @Override
    public Iterable<Score> findAllByStudent(Student student) {
        return scoreRepository.findAllByStudent(student);
    }

    @Override
    public Iterable<Score> findAllByStudentId(Long id) {
        Optional <Student> studentOptional = studentRepository.findById(id);
        return studentOptional.map(student -> scoreRepository.findAllByStudent(student)).orElse(null);
    }

    @Override
    public Optional<Score> findByStudentAndName(Student student, String name) {
        return scoreRepository.findAllByStudentAndName(student,name);
    }
}
