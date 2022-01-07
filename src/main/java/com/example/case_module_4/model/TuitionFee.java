package com.example.case_module_4.model;

import javax.persistence.*;

@Entity
//@Table(name = "tuition_fees")
public class TuitionFee {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    private Double fee;

    private boolean paid;

    @ManyToOne
//    @JoinColumn(name = "student_id")
    private Student student;

    public boolean getPaid() {
        return paid;
    }


    public boolean isPaid() {
        return paid;
    }

    public void setPaid(boolean paid) {
        this.paid = paid;
    }

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public TuitionFee() {
    }

    public TuitionFee(Long id, String name, Double fee, boolean paid, Student student) {
        this.id = id;
        this.name = name;
        this.fee = fee;
        this.paid = paid;
        this.student = student;
    }

    public TuitionFee(String name, Double fee, boolean paid, Student student) {
        this.name = name;
        this.fee = fee;
        this.paid = paid;
        this.student = student;
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

    public Double getFee() {
        return fee;
    }

    public void setFee(Double fee) {
        this.fee = fee;
    }
}
