<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Signup</title>
</head>
<body>
<h1 style="color:red">${neg}</h1>
<h1 style="color:green">${pos}</h1>
<form action="/user/signup" method="post"
      enctype="multipart/form-data">
    <fieldset style="width: 40vw">
        <legend>Student Signup</legend>
        <table>

            <tr>
                <th>Name:</th>
                <th><input type="text" name="name"></th>
            </tr>

            <tr>
                <th>Email:</th>
                <th><input type="email" name="email"></th>
            </tr>

            <tr>
                <th>Mobile:</th>
                <th><input type="number" name="mobile"></th>
            </tr>

            <tr>
                <th>Password:</th>
                <th><input type="password" name="password"></th>
            </tr>

            <tr>
                <th><label>DOB: </label></th>
                <th><input type="date" name="date"></th>
            </tr>

            <tr>
                <th><button>Signup</button></th>
                <th><button type="reset">Cancel</button></th>
            </tr>

        </table>
        <br> <a href="/"><button type="button">Back</button></a>
    </fieldset>
</form>



</body>
</html>