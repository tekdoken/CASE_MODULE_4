package com.example.case_module_4.model;




import javax.persistence.*;

@Entity
@Table(name = "scores")
public class Score {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    private Double score;

    public Double getScore() {
        return score;
    }

    @ManyToOne
    @JoinColumn(name="student_id")
    private Student student;

    public String getName() {
        return name;
    }

    public Score(Long id, String name, Double score) {
        this.id = id;
        this.name = name;
        this.score = score;
    }

    public Score() {
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setScore(Double score) {
        this.score = score;
    }
}
