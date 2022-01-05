package com.example.case_module_4.service;

import com.example.case_module_4.model.Parent;
import com.example.case_module_4.model.User;

import java.util.Optional;

public interface IParentService extends IGeneralService<Parent> {
    Optional<Parent> findByUser(User user);
}
