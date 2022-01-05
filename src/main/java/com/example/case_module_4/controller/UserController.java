package com.example.case_module_4.controller;

import com.example.case_module_4.model.User;
import com.example.case_module_4.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.Optional;

@CrossOrigin("*")
@RestController
@RequestMapping("/api/users")
public class UserController {
    @Autowired
    IUserService iUserService;

    @GetMapping
    public ResponseEntity<Iterable<User>> findAll() {
        return new ResponseEntity<>(iUserService.findAll(), HttpStatus.OK);
    }

    @PostMapping
    public ResponseEntity<User> add(@RequestBody User user) {
        System.out.println("abc vao controller");
        return new ResponseEntity<>(iUserService.save(user), HttpStatus.OK);
    }

    @PutMapping("/{id}")
    public ResponseEntity<User> update(@PathVariable Long id, @RequestBody User user) {
        user.setId(id);
        return new ResponseEntity<>(iUserService.save(user), HttpStatus.OK);
    }
    @DeleteMapping("/{id}")
    public ResponseEntity<User> delete(@PathVariable long id ){
        iUserService.remove(id);
        return new ResponseEntity<>(HttpStatus.OK);
    }
    @GetMapping("/{id}")
    public ResponseEntity<Optional<User>> findOne(@PathVariable Long id){
        return new ResponseEntity<>(iUserService.findById(id),HttpStatus.OK);
    }
    @GetMapping("/")
    public ResponseEntity<Optional<User>> findUserByUsername(@RequestParam String q){
        return new ResponseEntity<>(iUserService.findByUsername(q),HttpStatus.OK);
    }
}
