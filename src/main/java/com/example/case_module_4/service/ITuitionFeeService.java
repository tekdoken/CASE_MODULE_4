package com.example.case_module_4.service;

import com.example.case_module_4.model.Student;
import com.example.case_module_4.model.TuitionFee;

public interface ITuitionFeeService extends IGeneralService<TuitionFee> {
    Iterable<TuitionFee> findAllByStudent(Student student);
    Iterable<TuitionFee> findAllByStudentId(Long id);
    Iterable<TuitionFee> findAllByStudentIdAndPaid(Long id, boolean paid);
}
