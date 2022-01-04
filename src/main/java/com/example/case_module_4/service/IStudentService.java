package com.example.case_module_4.service;

import com.example.case_module_4.model.Parent;
import com.example.case_module_4.model.Student;

public interface IStudentService extends IGeneralService<Student> {
Iterable<Student> findAllByParent(Parent parent);
}
