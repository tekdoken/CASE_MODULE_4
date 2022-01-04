package com.example.case_module_4.repository;

import com.example.case_module_4.model.Provider;
import com.example.case_module_4.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<User,Long> {
    Optional<User> findByUsername(String username);
    Optional<User> findByUsernameAndProvider(String username, Provider provider);
}
