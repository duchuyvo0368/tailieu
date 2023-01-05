package com.springmvc.demo.service;

import com.springmvc.demo.models.Student;
import org.springframework.data.domain.Page;

import java.util.List;

public interface StudentService {
    Iterable<Student> getAllStudent();
    void seveStudent(Student student);
    Student getStudentById(String id);
    void deleteStudentById(String id);
    Page<Student> findPaginated(int pageNum, int pageSize,
                                String sortField,
                                String sortDirection);
}
