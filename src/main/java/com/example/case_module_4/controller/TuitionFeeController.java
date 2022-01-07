package com.example.case_module_4.controller;

import com.example.case_module_4.model.Student;
import com.example.case_module_4.model.TuitionFee;
import com.example.case_module_4.service.IStudentService;
import com.example.case_module_4.service.ITuitionFeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;

@RestController
@CrossOrigin("*")
@RequestMapping("/api/tuitionFees")
public class TuitionFeeController {
    @Autowired
    private ITuitionFeeService tuitionFeeService;

    @Autowired
    private IStudentService studentService;

    @GetMapping("/paid/{id}")
    public ResponseEntity<Iterable<TuitionFee>> findByStudentPaid(@PathVariable Long id) {
        return new ResponseEntity<>(tuitionFeeService.findAllByStudentIdAndPaid(id, true), HttpStatus.OK);
    }

    @GetMapping("/unpaid/{id}")
    public ResponseEntity<Iterable<TuitionFee>> findByStudentUnpaid(@PathVariable Long id) {
        return new ResponseEntity<>(tuitionFeeService.findAllByStudentIdAndPaid(id, false), HttpStatus.OK);
    }

    @PostMapping
    public ResponseEntity<Iterable<TuitionFee>> addNew(@RequestParam String name, Long id, Double fee) {
        ArrayList<TuitionFee> tuitionFees = new ArrayList<>();
        Iterable<Student> students = studentService.findAllByClazzId(id);
        for (Student student : students) {
            TuitionFee tuitionFee = new TuitionFee(name, fee, false, student);
            tuitionFeeService.save(tuitionFee);
            tuitionFees.add(tuitionFee);

        }
        return new ResponseEntity<>(tuitionFees,HttpStatus.CREATED);


    }

}
