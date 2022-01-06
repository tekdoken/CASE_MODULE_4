package com.example.case_module_4.model;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "students")
public class Student {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Date birthday;

    @ManyToOne
    private Clazz clazz;

    @ManyToOne
    private Parent parent;

    @OneToOne(cascade=CascadeType.ALL)
    private User user;

    private boolean active;


    public Student() {
    }



    public Student(Date birthday, Clazz clazz, Parent parent, User user,boolean active) {
        this.birthday = birthday;
        this.clazz = clazz;
        this.parent = parent;
        this.user = user;
        this.active = active;
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

    public Clazz getClazz() {
        return clazz;
    }

    public void setClazz(Clazz clazz) {
        this.clazz = clazz;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public Parent getParent() {
        return parent;
    }

    public void setParent(Parent parent) {
        this.parent = parent;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }
}
