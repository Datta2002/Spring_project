<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Employee List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #eef2f7;
            padding: 30px;
        }
        table {
            width: 80%;
            margin: auto;
            border-collapse: collapse;
            background-color: #fff;
            box-shadow: 0 0 8px rgba(0,0,0,0.1);
        }
        th, td {
            padding: 12px 16px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        h2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <h2>Employee List</h2>

    <table>
        <thead>
            <tr>
                <th>EmpID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Salary</th>
                <th>DeptID</th>
            </tr>
        </thead>
        <tbody>
	<c:forEach items="${employees}" var="emp">
    	<tr>
        	<td>${emp.emp_id}</td>
        	<td>${emp.fname}</td>
        	<td>${emp.lname}</td>
        	<td>${emp.salary}</td>
        	<td>${emp.dept_id}</td>
    </tr>
</c:forEach>
        </tbody>
    </table>
</body>
</html>
