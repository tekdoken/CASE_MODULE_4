package com.example.case_module_4.controller;

import com.example.case_module_4.model.Clazz;
import com.example.case_module_4.service.Clazz.ClazzImplService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;
import java.util.Optional;

@RestController
@CrossOrigin("*")
@RequestMapping("api/clazzs")
public class ClazzController {
@Autowired
    ClazzImplService clazzImplService;
    @GetMapping("")
    public ResponseEntity<Iterable<Clazz>> findAll(){
        Iterable<Clazz> clazzIterable= clazzImplService.findAll();
        return new ResponseEntity<>(clazzIterable, HttpStatus.OK);
    }
    @PostMapping("")
    public ResponseEntity<Clazz> create(@RequestBody Clazz clazz){
        clazzImplService.save(clazz);
        return new ResponseEntity<>(clazz,HttpStatus.CREATED);
    }
    @PutMapping("/{id}")
    public ResponseEntity<Clazz> update(@PathVariable Long id,@RequestBody Clazz clazz){
        clazz.setId(id);
        clazzImplService.save(clazz);
        return new ResponseEntity<>(clazz,HttpStatus.OK);
    }
    @DeleteMapping("/{id}")
    public ResponseEntity<Clazz> delete(@PathVariable Long id){
        clazzImplService.remove(id);
        return new ResponseEntity<>(HttpStatus.OK);
    }
    @GetMapping("/{id}")
    public ResponseEntity<Clazz> findOne(@PathVariable Long id){
        Optional<Clazz> clazz=clazzImplService.findById(id);
        return new ResponseEntity<>(clazz.get(),HttpStatus.OK);
    }


}
