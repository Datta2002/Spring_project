package employeeinfo;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

//import javax.swing.tree.RowMapper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcOperations;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository
public class EmployeeDAO {
	
	@Autowired
	private NamedParameterJdbcOperations jdbcTemplate;
	
	public List<Employee> getEmployee(){
		String selectSql = "select * from employee";
		return jdbcTemplate.query(selectSql, new EmployeeRowMapper());
	}
	
	public void addEmployee(Employee emp) {
		String insertSql = "insert into employee (emp_id, fname, lname, salary, dept_id) values(:emp_id, :fname, :lname, :salary, :dept_id)";
		MapSqlParameterSource map = new MapSqlParameterSource();
		map.addValue("emp_id", emp.getEmp_id());
		map.addValue("fname", emp.getFname());
		map.addValue("lname", emp.getLname());
		map.addValue("salary", emp.getSalary());
		map.addValue("dept_id", emp.getDept_id());
		jdbcTemplate.update(insertSql, map);
	}
	
	private static final class EmployeeRowMapper implements RowMapper<Employee>{
		public Employee mapRow(ResultSet rs,int rowNum) throws SQLException {
			Employee emp = new Employee();
			emp.setEmp_id(rs.getInt("emp_id"));
			emp.setFname(rs.getString("fname"));
			emp.setLname(rs.getString("lname"));
			emp.setSalary(rs.getInt("salary"));
			emp.setDept_id(rs.getInt("dept_id"));
			return emp;
		}
	}
}
