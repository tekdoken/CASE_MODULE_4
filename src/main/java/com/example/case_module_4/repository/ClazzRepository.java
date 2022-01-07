package com.example.case_module_4.repository;

import com.example.case_module_4.model.Clazz;
import com.example.case_module_4.model.Teacher;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface ClazzRepository extends JpaRepository<Clazz,Long> {
    Iterable<Clazz> findAllByTeachersContains(Teacher teacher);

}
