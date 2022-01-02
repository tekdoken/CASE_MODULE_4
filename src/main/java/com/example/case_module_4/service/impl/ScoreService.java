package com.example.case_module_4.service.impl;

import com.example.case_module_4.model.Score;
import com.example.case_module_4.repository.RoleRepository;
import com.example.case_module_4.repository.ScoreRepository;
import com.example.case_module_4.service.IScoreService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;
@Service
public class ScoreService implements IScoreService {
    @Autowired
    private ScoreRepository scoreRepository;

    @Override
    public Iterable<Score> findAll() {
        return scoreRepository.findAll();
    }

    @Override
    public Optional<Score> findById(Long id) {
        return scoreRepository.findById(id);
    }

    @Override
    public Score save(Score score) {
        return scoreRepository.save(score);
    }

    @Override
    public void remove(Long id) {

    }
}
