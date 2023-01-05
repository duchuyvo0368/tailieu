package com.springmvc.demo.controllers;

import com.springmvc.demo.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;


@Controller
@RequestMapping(path = "student")
public class StudentController {

    @Autowired
    private StudentService studentService;
    public String getAllCategories(ModelMap modelMap) {
        //data sent to jsp => ModelMap
        //send data from Controller to View
        //modelMap.addAttribute("name", "Hoang");
        //modelMap.addAttribute("age", 18);
        System.out.println("haha");
        return "customer";
    }
}
