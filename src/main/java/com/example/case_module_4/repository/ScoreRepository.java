package com.example.case_module_4.repository;

import com.example.case_module_4.model.Score;
import com.example.case_module_4.model.Student;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ScoreRepository extends JpaRepository<Score,Long> {
    Iterable<Score> findAllByStudent(Student student);
}
