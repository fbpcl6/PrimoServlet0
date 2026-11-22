<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
<h1>Login</h1>
<p>${errore}</p>
<form action = "LoginServlet" method = "post">
<input type = "email" name = "email" placeholder = "mariorossi@email.com" required>
<input type = "password" name ="password" placeholder ="°°°°°°°°" required>
<input type = "submit" value = "Accedi">
</form>
</body>
</html>