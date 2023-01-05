package com.springmvc.demo.service;

import com.springmvc.demo.models.Student;
import com.springmvc.demo.repositories.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import java.util.List;
import java.util.Optional;

public class StudentServiceImpl implements StudentService {

    @Autowired
    private StudentRepository studentRepository;
    @Override
    public Iterable<Student> getAllStudent() {
        return studentRepository.findAll();
    }

    @Override
    public void seveStudent(Student student) {
        this.studentRepository.save(student);
    }

    @Override
    public Student getStudentById(String id) {
        return null;
    }

    @Override
    public void deleteStudentById(String id) {
        this.studentRepository.deleteById(id);
    }

    @Override
    public Page<Student> findPaginated(int pageNum, int pageSize, String sortField, String sortDirection) {
//        Sort sort = sortDirection.equalsIgnoreCase(Sort.Direction.ASC.name()) ? Sort.by(sortField).ascending() :
//                Sort.by(sortField).descending();
//
//        Pageable pageable = PageRequest.of(pageNum - 1, pageSize, sort);
        return null;
    }
}
