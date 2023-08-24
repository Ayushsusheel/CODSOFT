package springmvc.model;


import java.util.ArrayList;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Email;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;


@Entity
public class Student                                    
{
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	
	@NotEmpty
	@Pattern(regexp="[^0-9]*")
	@Size(min=2,max=20)
	private String studentName;
	
	@Min(1)@Max(301)
	private int rollNumber;
	
	@NotEmpty
	@Email
	private String email; 
	
	
	@NotEmpty
	@Pattern(regexp = "[0-9]+")
	@Size(min=10,max=10)
	private String phoneNumber;
	
	
	
	@NotEmpty
	private String grade;
	
	@NotEmpty
	private String city;
	
	@NotEmpty
	private String state;
	
	@NotEmpty
	private String country;
	
	@NotNull @Past
	private Date dob;
	
	@NotEmpty
	private ArrayList<String> subjects;

	
	
	
	
	
	public Student() {
		super();
		
	}

	public Student(int id, String studentName, int rollNumber, String email, String phoneNumber, String grade,
			String city, String state, String country, Date dob, ArrayList<String> subjects) {
		super();
		this.id = id;
		this.studentName = studentName;
		this.rollNumber = rollNumber;
		this.email = email;
		this.phoneNumber = phoneNumber;
		this.grade = grade;
		this.city = city;
		this.state = state;
		this.country = country;
		this.dob = dob;
		this.subjects = subjects;
	}

	@Override
	public String toString() {
		return "Student [id=" + id + ", studentName=" + studentName + ", rollNumber=" + rollNumber + ", email=" + email
				+ ", phoneNumber=" + phoneNumber + ", grade=" + grade + ", city=" + city + ", state=" + state
				+ ", country=" + country + ", dob=" + dob + ", subjects=" + subjects + "]";
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public int getRollNumber() {
		return rollNumber;
	}

	public void setRollNumber(int rollNumber) {
		this.rollNumber = rollNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public ArrayList<String> getSubjects() {
		return subjects;
	}

	public void setSubjects(ArrayList<String> subjects) {
		this.subjects = subjects;
	}
	
	
	
	
	
	
	
	
	
  	      
	
	   
   
	   
	
	 
	
	
	
	
  
	
}
