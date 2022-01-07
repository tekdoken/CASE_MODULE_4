package com.example.case_module_4.controller;

import com.example.case_module_4.model.TuitionFee;
import com.example.case_module_4.service.IStudentService;
import com.example.case_module_4.service.ITuitionFeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin("*")
@RequestMapping("/api/tutionfee")
public class TuitionFeeController {
    @Autowired
    private ITuitionFeeService iTuitionFeeService;
    @Autowired
    private IStudentService iStudentService;
    @GetMapping("/paid/{id}")
    public ResponseEntity<Iterable<TuitionFee>> findByStudentPaid(@PathVariable Long id){
        return new ResponseEntity<>(iTuitionFeeService.findAllByStudentIdAndPaid(id,true), HttpStatus.OK);
    }
    @GetMapping("/unpaid/{id}")
    public ResponseEntity<Iterable<TuitionFee>> findByStudentUnpaid(@PathVariable Long id){
        return new ResponseEntity<>(iTuitionFeeService.findAllByStudentIdAndPaid(id,false), HttpStatus.OK);
    }
}
