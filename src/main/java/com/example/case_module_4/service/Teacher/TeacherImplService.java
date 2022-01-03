package com.example.case_module_4.service.Teacher;

import com.example.case_module_4.model.Teacher;
import com.example.case_module_4.repository.IClazzRepository;
import com.example.case_module_4.repository.TeacherRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;
@Service
public class TeacherImplService implements ITeacherService{
    @Autowired
    private TeacherRepository teacherRepository;
    @Override
    public Iterable<Teacher> findAll() {
        return teacherRepository.findAll();
    }

    @Override
    public Optional<Teacher> findById(Long id) {
        return teacherRepository.findById(id);
    }

    @Override
    public void save(Teacher teacher) {
teacherRepository.save(teacher);
    }

    @Override
    public void remove(Long id) {
teacherRepository.deleteById(id);
    }
}
