package mvc_course.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import mvc_course.models.Student;

@Controller
public class StudentController {

	@RequestMapping(value="addStudent.mvc")
	public String addStudent(){
		return "addStudent";
	}
	
	@RequestMapping(value="submitForm.mvc")
	public String addStudent(@ModelAttribute("student") Student student ){
		Student.list.add(student);
		
		return "redirect:listStudents.mvc";
	}
	
	@RequestMapping(value="studentLists.mvc")
	public String studentLists(){

		return "redirect:listStudents.mvc";
	}
	
	@RequestMapping(value = "setup.mvc")
	public String setupStudents(){
		Student s;
		s = new Student();
		s.setFirstName("Chris");
		s.setLastName("Gill");
		s.setGender("Male");
		s.setUniversity("Queens University Belfast");
		Student.list.add(s);
		
		s = new Student();
		s.setFirstName("Scott");
		s.setLastName("Gill");
		s.setGender("Male");
		s.setUniversity("Ulster University Belfast");
		Student.list.add(s);
		
		s = new Student();
		s.setFirstName("Laura");
		s.setLastName("Huston");
		s.setGender("Female");
		s.setUniversity("Queens Univeristy Belfast");
		Student.list.add(s);
		
		s = new Student();
		s.setFirstName("John");
		s.setLastName("Smith");
		s.setGender("Male");
		s.setUniversity("Queens Univeristy Belfast");
		Student.list.add(s);
		
		
		return "redirect:listStudents.mvc";
	}
	
	@RequestMapping(value ="listStudents.mvc")
	public ModelAndView listStudents(ModelAndView mav){
		mav.setViewName("studentList");
		mav.addObject("studentList", Student.list);
		
		return mav;
	}
	
}
