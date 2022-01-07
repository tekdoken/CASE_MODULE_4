package com.example.case_module_4.service;

import com.example.case_module_4.model.Score;
import com.example.case_module_4.model.Student;

import java.util.Optional;

public interface IScoreService extends IGeneralService<Score>{
    Iterable<Score> findAllByStudent(Student student);
    Iterable<Score> findAllByStudentId(Long id);
    Optional<Score> findByStudentAndName(Student student, String name);
}
