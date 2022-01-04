package com.example.case_module_4.model;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name ="classes")
public class Clazz {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    private Integer grade;

    @ManyToMany
    private Set<Teacher> teachers = new HashSet<>();

    public Clazz(Long id, String name, Integer grade, Set<Teacher> teachers) {
        this.id = id;
        this.name = name;
        this.grade = grade;
        this.teachers = teachers;
    }

    public Clazz(String name, Integer grade, Set<Teacher> teachers) {
        this.name = name;
        this.grade = grade;
        this.teachers = teachers;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Set<Teacher> getTeachers() {
        return teachers;
    }

    public void setTeachers(Set<Teacher> teachers) {
        this.teachers = teachers;
    }

    public Integer getGrade() {
        return grade;
    }

    public void setGrade(Integer grade) {
        this.grade = grade;
    }

    public Clazz() {
    }

}
