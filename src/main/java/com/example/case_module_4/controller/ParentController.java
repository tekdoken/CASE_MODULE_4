package com.example.case_module_4.controller;

import com.example.case_module_4.model.Parent;
import com.example.case_module_4.service.IParentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
//import org.springframework.security.core.parameters.P;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@CrossOrigin("*")
@RestController
@RequestMapping("/api/parents")
public class ParentController {
    @Autowired
    IParentService iParentService;

    @GetMapping("")
    public ResponseEntity<Iterable<Parent>> findAll() {
        if (iParentService.findAll() == null) {
            return new ResponseEntity<>(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<>(iParentService.findAll(), HttpStatus.OK);
    }

    @PostMapping("")
    public ResponseEntity<Parent> add(@RequestBody Parent parent) {
        return new ResponseEntity<>(iParentService.save(parent), HttpStatus.OK);
    }

    @PutMapping("/{id}")
    public ResponseEntity<Parent> update(@PathVariable Long id, @RequestBody Parent parent) {
        parent.setId(id);
        return new ResponseEntity<>(iParentService.save(parent), HttpStatus.OK);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Optional<Parent>> findOne(@PathVariable Long id) {
        return new ResponseEntity<>(iParentService.findById(id), HttpStatus.OK);
    }
}
