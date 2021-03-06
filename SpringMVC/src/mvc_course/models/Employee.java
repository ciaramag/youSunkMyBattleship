package mvc_course.models;

import java.util.ArrayList;

// Employee Model, Sean.

import java.util.HashSet;
import java.util.Set;

public class Employee {
	
	int employee_number;
	String name;
	String address;
	String ni_number;
	String iban_number;
	double starting_salary;
	int employee_type_id;
	int commission_rate;
	int total_sales;
	private ArrayList<String> projects = new ArrayList<>();
    private String jobTitle;
	
	public static Set<Employee> employeeList = new HashSet<Employee>();
	
	public Employee(){
		
	}
	
	public Employee(String name, String address, String nin, String iban, double salary) {
		this.name = name;
		this.address = address;
		this.ni_number = nin;
		this.iban_number = iban;
		this.starting_salary = salary;
	}
	
	public String getJobTitle(){
		return jobTitle;
	}
	
	public void addProject(String proj){
		this.projects.add(proj);
	}
	
	public void setJobTitle(String jobTitle){
		this.jobTitle = jobTitle;
	}

	public int getEmployee_number() {
		return employee_number;
	}

	public void setEmployee_number(int employee_number) {
		this.employee_number = employee_number;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getNi_number() {
		return ni_number;
	}

	public void setNi_number(String ni_number) {
		this.ni_number = ni_number;
	}

	public String getIban_number() {
		return iban_number;
	}

	public void setIban_number(String iban_number) {
		this.iban_number = iban_number;
	}

	public double getStarting_salary() {
		return starting_salary;
	}

	public void setStarting_salary(double starting_salary) {
		this.starting_salary = starting_salary;
	}

	public int getEmployee_type_id() {
		return employee_type_id;
	}

	public void setEmployee_type_id(int employee_type_id) {
		this.employee_type_id = employee_type_id;
	}

	public int getCommission_rate() {
		return commission_rate;
	}

	public void setCommission_rate(int commission_rate) {
		this.commission_rate = commission_rate;
	}

	public int getTotal_sales() {
		return total_sales;
	}

	public void setTotal_sales(int total_sales) {
		this.total_sales = total_sales;
	}
	
	}
