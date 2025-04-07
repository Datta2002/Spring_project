<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <title>Add Employee</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f2f5;
            padding: 30px;
        }
        .form-box {
            background-color: white;
            padding: 25px;
            border-radius: 8px;
            box-shadow: 0px 0px 8px rgba(0,0,0,0.1);
            max-width: 400px;
            margin: auto;
        }
        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-top: 8px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 12px 20px;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
        h2 {
            text-align: center;
        }
    </style>
</head>
<body>
<div class="form-box">
    <h2>Add Employee</h2>

    <form:form action="addEmp" modelAttribute="employee" method="post">
    
        <label for="emp_id">Employee ID:</label>
        <form:input path="emp_id" id="emp_id" type="number"/>

        <label for="fname">First Name:</label>
        <form:input path="fname" id="fname" type="text"/>

        <label for="lname">Last Name:</label>
        <form:input path="lname" id="lname" type="text"/>

        <label for="salary">Salary:</label>
        <form:input path="salary" id="salary" type="number"/>

        <label for="dept_id">Department ID:</label>
        <form:input path="dept_id" id="dept_id" type="number"/>

        <input type="submit" value="Add Employee"/>
    </form:form>
</div>
</body>
</html>
