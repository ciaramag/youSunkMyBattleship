package mvc_course.controllers;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Welcome {
	
	@Autowired
	private DataSource dataSource;
	
	@RequestMapping(value="index.mvc")
	public String landingPage(Model m){
		m.addAttribute("msg", "Hello from the controller");
		return "redirect:addEmployee.mvc";
	}
}
