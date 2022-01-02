package com.example.case_module_4.repository;

import com.example.case_module_4.model.TuitionFee;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TuitionFeeRepository extends JpaRepository <TuitionFee,Long> {
}
