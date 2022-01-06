package com.example.case_module_4.controller;

import com.example.case_module_4.model.Parent;
import com.example.case_module_4.model.Student;
import com.example.case_module_4.model.User;
import com.example.case_module_4.service.IParentService;
import com.example.case_module_4.service.IStudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@CrossOrigin("*")
@RestController
@RequestMapping("/api/students")
public class StudentController {
    @Autowired
    private IStudentService studentService;
    @Autowired
    private IParentService iParentService;

    @GetMapping("")
    public ResponseEntity<Iterable<Student>> findAll() {
        if (studentService.findAll() == null) {
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<>(studentService.findAll(), HttpStatus.OK);
    }

    @PostMapping("")
    public ResponseEntity<Student> add(@RequestBody Student student) {

        return new ResponseEntity<>(studentService.save(student), HttpStatus.OK);
    }

    @PutMapping("/{id}")
    public ResponseEntity<Student> update(@PathVariable Long id, @RequestBody Student student) {
        student.setId(id);
        return new ResponseEntity<>(studentService.save(student), HttpStatus.OK);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Optional<Student>> findOne(@PathVariable Long id) {
        return new ResponseEntity<>(studentService.findById(id), HttpStatus.OK);
    }

    @GetMapping("/findAllByParent/{id}")
    public ResponseEntity<Iterable<Student>> findAllStudentByParent(@PathVariable Long id) {
        return new ResponseEntity<>(studentService.findAllByParent(iParentService.findById(id).get()), HttpStatus.OK);
    }

//    @PostMapping ("/addStAndPr")
//    public ResponseEntity<Iterable<User>> createStAndPrUsers(@RequestParam String studentName, String parentPhoneNo){
//        studentName = studentName.toLowerCase();
//        String stUsername = "";
////        for(int i=0;i<studentName.length();i++){
////            if(!studentName.charAt(i).equals(" ")){
////
////            }
////
////        }
//
//
//


}
