package com.example.case_module_4.service;

import com.example.case_module_4.model.Clazz;
import com.example.case_module_4.model.Teacher;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface IClazzService extends IGeneralService <Clazz>{
    Iterable<Clazz> findAllByTeachersContains(Teacher teacher);
}
