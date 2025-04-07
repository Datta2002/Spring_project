<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <title>Home Page</title>
    <style>
        body {
            display: flex;
            height: 100vh;
            justify-content: center;
            align-items: center;
            font-family: Arial, sans-serif;
        }

        .container {
            border: 3px solid black;
            padding: 40px;
            text-align: center;
        }

        img {
            width: 200px;
            height: auto;
            margin: 20px 0;
        }

        .btn {
            padding: 10px 20px;
            margin: 10px;
            border: 2px solid black;
            background-color: white;
            cursor: pointer;
            font-weight: bold;
        }

        .btn:hover {
            background-color: lightgray;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Welcome to homepage</h2>

    <!-- Navigation Buttons -->
    <form action="getEmp" method="get" style="display:inline;">
        <input type="submit" class="btn" value="addData">
    </form>

    <form action="addData" method="get" style="display:inline;">
        <input type="submit" class="btn" value="AddEmployee">
    </form>
</div>

</body>
</html>
