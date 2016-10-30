package controller;

import domain.Student;
import java.util.List;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import service.StudentService;
import validator.StudentValidation;

@Controller
@RequestMapping("/students")
public class StudentController {

    @Autowired
    private StudentService studentService;
    
    @Autowired
    private StudentValidation studentValidation;

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String listStudents(Model model) {
        model.addAttribute("studentList", studentService.findAll());
        return "alleStudenten";
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String show(@PathVariable("id") Integer id, Model model) {
       
        Student student = studentService.findById(id);
        model.addAttribute("student", student);
        return "detailStudent";
    }
    
    @RequestMapping(value = "/voegStudentToe", method = RequestMethod.GET)
    public String voegStudentToe(Model model) {
        model.addAttribute("student", new Student());
        return "voegStudentToe";
    }
    
    @RequestMapping(value = "/voegStudentToe", method = RequestMethod.POST)
    public String voegStudentToeProcess(@Valid Student student, BindingResult result, Model model) {
        studentValidation.validate(student, result);

        if (result.hasErrors()) {
            return "voegStudentToe";
        }
        
        List<Student> studenten = studentService.findAll();
        student.setId(studenten.size()+1);
        studenten.add(student);
        model.addAttribute("studentList", studenten);
        
        return "alleStudenten";
    }

}
