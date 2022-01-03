package com.example.case_module_4.service;

import com.example.case_module_4.model.Parent;
import com.example.case_module_4.model.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;

import java.util.Optional;

public interface IUserService extends IGeneralService<User>, UserDetailsService {
    Optional<User> findByUsername(String username);
//    UserDetails loadUserByUsername(String username)
}
