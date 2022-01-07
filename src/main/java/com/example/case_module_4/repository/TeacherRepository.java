package com.example.case_module_4.repository;

import com.example.case_module_4.model.Teacher;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TeacherRepository extends JpaRepository <Teacher,Long>{
//    Iterable<Teacher> orderById();
}
