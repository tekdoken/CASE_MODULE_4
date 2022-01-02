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

    @OneToOne
    private User user;

    public Teacher() {
    }

    public Set<Clazz> getClasses() {
        return classes;
    }

    public void setClasses(Set<Clazz> classes) {
        this.classes = classes;
    }
}
