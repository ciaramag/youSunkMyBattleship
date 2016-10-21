package mvc_course.controllers;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import mvc_course.models.Employee;


@Controller
public class EmployeeController{
    
    @Autowired
    private DataSource dataSource;
    
    @RequestMapping(value="addEmployee.mvc")
    public String addEmployee(){
        return "addEmployee";
    }
        
      @RequestMapping(value = "submitForm.mvc")
      public String addEmployee(@ModelAttribute("employee") Employee e) {
          try{
        	  
          Connection c = dataSource.getConnection();
          PreparedStatement ps = c.prepareStatement("INSERT INTO Employees" + "(Employee_name, Address, National_insurance_number, Bank_account_IBAN, Starting_salary, Employee_type_id)" + "VALUES (?,?,?,?,?,?)");            
          ps.setString(1, e.getName());
          ps.setString(2,  e.getAddress());
          ps.setString(3,  e.getNi_number());
          ps.setString(4, e.getIban_number());
          ps.setDouble(5,  e.getStarting_salary());
          ps.setInt(6,  1);
          ps.executeUpdate();
          }catch(Exception ex){
              System.out.println(ex.getMessage());
          }
          return "redirect:showEmployees.mvc";
      }    
      
}