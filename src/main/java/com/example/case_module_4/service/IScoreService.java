package com.example.case_module_4.service;

import com.example.case_module_4.model.Score;
import com.example.case_module_4.model.Student;

public interface IScoreService extends IGeneralService<Score>{
    Iterable<Score> findAllByStudent(Student student);
    Iterable<Score> findAllByStudentId(Long id);
}
