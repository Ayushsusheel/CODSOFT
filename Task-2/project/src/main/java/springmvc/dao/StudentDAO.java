package springmvc.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import springmvc.model.Student;





@Component //@Repository
public class StudentDAO 
{
	@Autowired
	public HibernateTemplate hibernateTemplate;

	@Transactional
	public void saveStudent(Student student)                            						//1st CREATE / UPDATE
	{
		System.out.println("\n\n SAVING USER TO DATABASE :- " + student + "  \n\n");
		
		this.hibernateTemplate.saveOrUpdate(student);
		
		//return id;
	}
	
	
	public List<Student> getAllStudents()//GET LIST of ALL STUDENTS					//2nd FETCH ALL 
	{
		List<Student> studentsList = this.hibernateTemplate.loadAll(Student.class);
		
    	System.out.println("\n--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------\n");
		System.out.println("\n(||  Fetching LIST of students...  ||)\n");
    	System.out.println("\n--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------\n");
		
    	return studentsList;
	}
	
	
	@Transactional
	public void deleteSingleStudent(int id) 										//3rd DELETE SINGLE USER	
	{
		Student objectID = this.hibernateTemplate.load(Student.class,id);
		
		this.hibernateTemplate.delete(objectID);
		
	}
	
	
	public Student getSingleStudent(int id)										//4th FETCH SINGLE USER
	{
		return this.hibernateTemplate.get(Student.class,id);
		
	}
	
}
