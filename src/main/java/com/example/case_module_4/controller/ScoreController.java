package com.example.case_module_4.controller;

import com.example.case_module_4.model.Score;
import com.example.case_module_4.model.Student;
import com.example.case_module_4.service.IScoreService;
import com.example.case_module_4.service.IStudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@RestController
@CrossOrigin("*")
@RequestMapping("/api/scores")
public class ScoreController {
    @Autowired
    IScoreService iScoreService;
    @Autowired
    IStudentService iStudentService;
    @GetMapping("/findAllByStudent/{id}")
    public ResponseEntity<Iterable<Score>> findAllScoreByStudent(@PathVariable Long id){
        return new ResponseEntity<>( iScoreService.findAllByStudent(iStudentService.findById(id).get()), HttpStatus.OK);
    }
}
