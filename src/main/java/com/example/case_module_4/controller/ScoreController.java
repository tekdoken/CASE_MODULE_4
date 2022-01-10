package com.example.case_module_4.controller;

import com.example.case_module_4.model.Score;
import com.example.case_module_4.model.Student;
import com.example.case_module_4.service.IScoreService;
import com.example.case_module_4.service.IStudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

@RestController
@CrossOrigin("*")
@RequestMapping("/api/scores")
public class ScoreController {
    @Autowired
    IScoreService iScoreService;
    @Autowired
    IStudentService iStudentService;


    @GetMapping("/students/{id}")
    public ResponseEntity<Iterable<Score>> findByStudent(@PathVariable Long id){
        return new ResponseEntity<>( iScoreService.findAllByStudent(iStudentService.findById(id).get()), HttpStatus.OK);
    }

    @GetMapping("/classes/{id}/{testName}")
    public ResponseEntity<Iterable<Score>> findByClassAndName(@PathVariable Long id, @PathVariable String testName){
        Map<Student, Score> scoreList = new HashMap<>();
        ArrayList <Score> scores = new ArrayList<>();
        Iterable<Student> students = iStudentService.findAllByClazzId(id);
        for(Student student: students){
            Optional<Score> scoreOptional = iScoreService.findByStudentAndName(student,testName);
            scoreOptional.ifPresent(scores::add);
        }
        return new ResponseEntity<>(scores,HttpStatus.OK);
    }

    @PostMapping("")
    public ResponseEntity<Iterable<Score>> add(@RequestBody Iterable<Score> scores) {
        for(Score score: scores){
            iScoreService.save(score);
        }
        return new ResponseEntity<>(scores, HttpStatus.OK);
    }
}
