package com.example.case_module_4.controller;

import com.example.case_module_4.model.Clazz;
import com.example.case_module_4.model.Teacher;
import com.example.case_module_4.service.ITeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;
@RestController
@CrossOrigin("*")
@RequestMapping("api/teachers")
public class TeacherController {
    @Autowired
    ITeacherService teacherService;
    @GetMapping("")
    public ResponseEntity<Iterable<Teacher>> findAll(){
        Iterable<Teacher> teacherIterable= teacherService.findAll();
        return new ResponseEntity<>(teacherIterable, HttpStatus.OK);
    }
    @PostMapping("")
    public ResponseEntity<Teacher> create(@RequestBody Teacher teacher){
        teacherService.save(teacher);
        return new ResponseEntity<>(teacher,HttpStatus.CREATED);
    }
    @PutMapping("/{id}")
    public ResponseEntity<Teacher> update(@PathVariable Long id, @RequestBody Teacher teacher){
        teacher.setId(id);
        teacherService.save(teacher);
        return new ResponseEntity<>(teacher,HttpStatus.OK);
    }
    @DeleteMapping("/{id}")
    public ResponseEntity<Clazz> delete(@PathVariable Long id){
        teacherService.remove(id);
        return new ResponseEntity<>(HttpStatus.OK);
    }
    @GetMapping("/{id}")
    public ResponseEntity<Teacher> findOne(@PathVariable Long id){
        Optional<Teacher> teacher=teacherService.findById(id);
        return new ResponseEntity<>(teacher.get(),HttpStatus.OK);
    }
}
