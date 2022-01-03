package com.example.case_module_4.repository;

import com.example.case_module_4.model.Clazz;
import org.springframework.data.domain.Page;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.awt.print.Pageable;

@Repository
public interface IClazzRepository extends JpaRepository<Clazz,Long> {
    Page<Clazz> findByNameContaining(Pageable pageable, String name);
}
