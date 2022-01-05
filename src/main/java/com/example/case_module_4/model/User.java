package com.example.case_module_4.model;


import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.util.Set;

@Entity
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String username;

    private String password;

    private String fullName;

    @ManyToMany(fetch = FetchType.EAGER)
    private Set<Role> roles;

    private String avatar;

    @Enumerated(EnumType.STRING)
    private Provider provider;

    private boolean enabled;


    public User() {
    }

    public User(Long id, String username, String password, String fullName, Set<Role> roles, String avatar, Provider provider, boolean enabled) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.fullName = fullName;
        this.roles = roles;
        this.avatar = avatar;
        this.provider = provider;
        this.enabled = enabled;
    }

    public User(String username, String password, String fullName, Set<Role> roles, String avatar, Provider provider, boolean enabled) {
        this.username = username;
        this.password = password;
        this.fullName = fullName;
        this.roles = roles;
        this.avatar = avatar;
        this.provider = provider;
        this.enabled = enabled;
    }
    public User(String username, String password, String fullName,  String avatar, Provider provider, boolean enabled) {

        this.username = username;
        this.password = password;
        this.fullName = fullName;
        this.avatar = avatar;
        this.provider = provider;
        this.enabled = enabled;
    }



    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullName() {
        return fullName;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public Set<Role> getRoles() {
        return roles;
    }

    public void setRoles(Set<Role> roles) {
        this.roles = roles;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public Provider getProvider() {
        return provider;
    }

    public void setProvider(Provider provider) {
        this.provider = provider;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", fullName='" + fullName + '\'' +
                ", roles=" + roles +
                ", avatar='" + avatar + '\'' +
                ", provider=" + provider +
                ", enabled=" + enabled +
                '}';
    }
}
