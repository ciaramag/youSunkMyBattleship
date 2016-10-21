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

import mvc_course.models.Employee;

@Controller
public class ReportController {
	
	@Autowired
	private DataSource dataSource;
	
	@RequestMapping(value="showEmployees.mvc")
    public String showEmployees(Model m){
		
		List<Employee> employees = new ArrayList<Employee>();
		
        try{
            Connection c = dataSource.getConnection();
            Statement s = c.createStatement();
            String sql = "SELECT * FROM Employees";
            ResultSet rs = s.executeQuery(sql);
        
            List<String[]>rows = new ArrayList<String[]>();
        
            while(rs.next()){
                
            String[] row = {
                        rs.getString(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6)};
                rows.add(row);
                }
            
            for (String[] row : rows) {
            	Employee e = new Employee(row[1], row[2], row[3], row[4], Double.parseDouble(row[5]));
            	employees.add(e);
            	System.out.println();
            	for (String string : row) {
            		System.out.print(string + " ");
            	}
            }
            
            m.addAttribute("employees", employees);
            
        }catch (Exception e){
            System.out.println(e.getMessage());
        }
        
       
        return "EmployeesPerBuReport";
        
    }

}
