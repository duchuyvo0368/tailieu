package com.springmvc.demo.repositories;

import com.springmvc.demo.models.Product;
import com.springmvc.demo.models.Student;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface StudentRepository extends CrudRepository<Student, String> {
//    Iterable<SinhVien> findByStudentID(String studentID);
}
