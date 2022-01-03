package com.example.case_module_4.controller;

import com.example.case_module_4.model.Student;
import com.example.case_module_4.service.IStudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/api/students")
public class StudentController {
    @Autowired
    private IStudentService studentService;
//    Iterable<House> houses = houseService.findAll();
//        if (houses == null) {
//            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
//        }
//        return new ResponseEntity<>(houses, HttpStatus.OK);
    @GetMapping
    public ResponseEntity<Iterable<Student>> findAll(){
        Iterable<Student> students = studentService.findAll();
        if(students == null){
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<>(students,HttpStatus.OK);
    }


}
