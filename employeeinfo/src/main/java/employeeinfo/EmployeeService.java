package employeeinfo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmployeeService {
	
	@Autowired
	private EmployeeDAO empdao;
	
	public List<Employee> displayEmployee(){
		return empdao.getEmployee();
	}
	
	public void addEmp(Employee emp) {
		empdao.addEmployee(emp);
	}

	public List<Employee> getAllEmployees() {
		// TODO Auto-generated method stub
		return empdao.getEmployee();
	}
	
	
	
}
