package com.example.case_module_4.controller;

import com.example.case_module_4.model.Role;
import com.example.case_module_4.service.IRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.web.server.authentication.RedirectServerAuthenticationEntryPoint;
import org.springframework.web.bind.annotation.*;

@RestController
@CrossOrigin("*")
@RequestMapping("/api/roles")
public class RoleController {
    @Autowired
    IRoleService iRoleService;
    @GetMapping("")
    public ResponseEntity<Role> findRoleByName( @RequestParam String q){
        return new ResponseEntity<>(iRoleService.findByName(q), HttpStatus.OK);
    }
}
