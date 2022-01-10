package com.example.case_module_4.service.impl;

import com.example.case_module_4.model.*;
import com.example.case_module_4.oauth2.CustomOAuth2User;
import com.example.case_module_4.repository.UserRepository;
import com.example.case_module_4.service.IRoleService;
import com.example.case_module_4.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.Map;
import java.util.Optional;
import java.util.Set;

@Service
public class UserService implements IUserService {
    @Autowired
    private IRoleService roleService;
    @Autowired
    private UserRepository userRepository;

    @Override
    public Iterable<User> findAll() {
        return userRepository.findAll();
    }

    @Override
    public Optional<User> findById(Long id) {
        return userRepository.findById(id);
    }

    @Override
    public User save(User user) {
        return userRepository.save(user);
    }

    @Override
    public void remove(Long id) {
        userRepository.deleteById(id);
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Optional<User> userOptional = userRepository.findByUsername(username);
        if (!userOptional.isPresent()) {
            throw new UsernameNotFoundException(username);
        }
        return UserPrinciple.build(userOptional.get());
    }

    @Override
    public Optional<User> findByUsername(String username) {
        return userRepository.findByUsername(username);
    }


    @Override
    public void handleGoogleUser(CustomOAuth2User oauthUser) {
        Map<String, Object> attributes = oauthUser.getAttributes();
        String fullName = attributes.get("name").toString();
        Provider provider = Provider.GOOGLE;
        String username = attributes.get("email").toString();
        String password = "hoangvixinh";
        String avatar = attributes.get("picture").toString();
        Role role = roleService.findByName("ROLE_USER");
        Set<Role> roles = new HashSet<>();
        roles.add(role);
        User user = new User(username, password, fullName, roles, avatar, provider, true);
        Optional<User> userOptional = userRepository.findByUsernameAndProvider(username, Provider.GOOGLE);
        if (!userOptional.isPresent()) {
            userRepository.save(user);
            System.out.println("abc save db");
        }
    }

    @Override
    public void handleGithubUser(CustomOAuth2User oauthUser) {
        Map<String, Object> attributes = oauthUser.getAttributes();
        String fullName = attributes.get("login").toString();
        Provider provider = Provider.GITHUB;
        String username = attributes.get("name").toString();
        String password = "hoangvixinh";
        String avatar = attributes.get("avatar_url").toString();
        Role role = roleService.findByName("ROLE_USER");
        Set<Role> roles = new HashSet<>();
        roles.add(role);
        User user = new User(username, password, fullName, roles, avatar, provider, true);
        System.out.println("abc user"+user);

        Optional<User> userOptional = userRepository.findByUsernameAndProvider(username, Provider.GITHUB);
        if (!userOptional.isPresent()) {
            userRepository.save(user);
            System.out.println("abc save db");
        }
    }

    @Override
    public void handleFacebookUser(CustomOAuth2User oauthUser) {
        Map<String, Object> attributes = oauthUser.getAttributes();
        String fullName = attributes.get("login").toString();
        Provider provider = Provider.FACEBOOK;
        String username = attributes.get("login").toString();
        String password = "hoangvixinh";
        String avatar = attributes.get("avatar_url").toString();
        Role role = roleService.findByName("ROLE_USER");
        Set<Role> roles = new HashSet<>();
        roles.add(role);
        User user = new User(username, password, fullName, roles, avatar, provider, true);
        System.out.println("abc user"+user);

        Optional<User> userOptional = userRepository.findByUsernameAndProvider(username, Provider.GITHUB);
        if (!userOptional.isPresent()) {
            userRepository.save(user);
            System.out.println("abc save db");
        }
    }

    @Override
    public Iterable<User> findAllByFullNameContaining(String fullName) {
        return userRepository.findAllByFullNameContaining(fullName);
    }

}
