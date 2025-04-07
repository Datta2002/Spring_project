package employeeinfo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class EmployeeController {
	
	@Autowired
	private EmployeeService empService;
	
	@RequestMapping("/getEmp")
	public String getEmp(Model model) {
		List<Employee> emp = empService.displayEmployee();
		model.addAttribute("employees",emp);
		return "employee_list";
	}
	
	@GetMapping("/addData")
	public String addData(Model model) {
		model.addAttribute("employee",new Employee());
		return "add_employee";
	}
	
    @GetMapping("/")
    public String showHomePage(Model model) {
        List<Employee> list = empService.getAllEmployees();
        model.addAttribute("employees", list);
        return "home";
    }
    
    
    
	@PostMapping("/addEmp")
	public String addEmp(@ModelAttribute("employee") Employee emp) {
		empService.addEmp(emp);
		return "redirect:/getEmp";
	}
    
//    @PostMapping("/addEmployee")
//    public String addEmployee(@RequestParam("name") String name,
//                              @RequestParam("department") String dept) {
//        Employee emp = new Employee();
//        emp.setName(name);
//        emp.setDepartment(dept);
//        empService.addEmployee(emp);
//        return "redirect:/home";  // refresh to show updated list
//    }
//	
	
//	@PostMapping("/home")
//	public String addEmp(@ModelAttribute("employee") Employee emp) {
//		empService.addEmp(emp);
//		return "redirect:/home";
//	}
	
}
