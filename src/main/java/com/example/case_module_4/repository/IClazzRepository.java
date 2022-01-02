package com.example.case_module_4.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IClazzRepository extends JpaRepository<Class,Long> {
}
