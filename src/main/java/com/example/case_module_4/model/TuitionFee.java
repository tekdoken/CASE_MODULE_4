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


    public Double getFee() {
        return fee;
    }

    public void setFee(Double fee) {
        this.fee = fee;
    }
}
