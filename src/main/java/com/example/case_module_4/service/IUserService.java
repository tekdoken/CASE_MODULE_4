package com.example.case_module_4.service;

import com.example.case_module_4.model.Role;
import com.example.case_module_4.model.User;
import com.example.case_module_4.oauth2.CustomOAuth2User;
import org.springframework.security.core.userdetails.UserDetailsService;

import java.util.Optional;

public interface IUserService extends IGeneralService<User>, UserDetailsService {
    Optional<User> findByUsername(String username);

    //    UserDetails loadUserByUsername(String username)
    void handleGoogleUser(CustomOAuth2User oauthUser);

    void handleGithubUser(CustomOAuth2User oauthUser);

    void handleFacebookUser(CustomOAuth2User oauthUser);

    Iterable<User> findAllByFullNameContaining(String fullName);
}

