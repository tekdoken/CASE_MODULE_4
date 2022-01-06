package com.example.case_module_4.model;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "teachers")
public class Teacher {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToMany
    private Set<Clazz> classes = new HashSet<>();

    @OneToOne(cascade = {CascadeType.ALL})
    private User user;

    private boolean active;

    public Teacher(Long id, Set<Clazz> classes, User user, boolean active) {
        this.id = id;
        this.classes = classes;
        this.user = user;
        this.active = active;
    }

    public Teacher(Set<Clazz> classes, User user, boolean status) {
        this.classes = classes;
        this.user = user;
        this.active = status;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean status) {
        this.active = status;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Teacher() {
    }

    public Set<Clazz> getClasses() {
        return classes;
    }

    public void setClasses(Set<Clazz> classes) {
        this.classes = classes;
    }
}
