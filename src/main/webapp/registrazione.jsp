<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registrazione</title>
</head>
<body>
<h1>Registrazione</h1>
<p>${errore}</p>
<form action="RegistrazioneServlet" method = "POST">
<input type = "text" name = "nome" placeholder ="es. Mario" required>
<input type ="text" name = "cognome" placeholder = "es. Rossi" required>
<input type = "email" name = "email" placeholder =  "mariorossi@email.com" required>
<input type = "password" name = "password" placeholder ="°°°°°°°°" required>
<input type = "submit" value = "Registrati">
</form>
</body>
</html>