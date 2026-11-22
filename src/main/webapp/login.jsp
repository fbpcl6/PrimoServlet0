<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Accedi - PinkClub 🌸</title>


<style>
    /* 1. STILE DEL CORPO (Stesso sfondo rosa cipria) */
    body {
        background-color: #fbe9f0;
        color: #8a2d5b;
        font-family: 'Arial Rounded MT Bold', 'Trebuchet MS', sans-serif;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        min-height: 100vh;
        margin: 0;
        text-align: center;
    }

    /* 2. INTESTAZIONE IN CORSIVO FINISSIMO ED ELEGANTE */
    h1 {
        font-family: 'Sacramento', cursive;
        font-size: 52px;
        font-weight: normal;
        color: #8a2d5b;
        margin-bottom: 2px;
    }

    /* SOTTOTITOLO POP ROSA VIVIDO */
    h2 {
        font-size: 17px;
        color: #e75a9b;
        margin-top: 0;
        margin-bottom: 15px;
        font-weight: normal;
    }

    /* 3. SCHEDA BIANCA SEMITRASPARENTE */
    .card {
        background: rgba(255, 255, 255, 0.85);
        padding: 30px 40px;
        border-radius: 20px;
        box-shadow: 0 4px 15px rgba(138, 45, 91, 0.12);
        width: 280px; /* Larghezza fissa e ordinata per il login */
    }

    /* 4. CAMPI DEL FORM */
    .campo {
        margin-bottom: 14px;
        display: flex;
        flex-direction: column;
        align-items: flex-start;
    }
    
    label {
        margin-bottom: 5px;
        font-size: 13px;
        color: #8a2d5b;
    }

    input {
        padding: 9px 12px;
        border: 2px solid #e75a9b;
        border-radius: 12px;
        font-size: 14px;
        width: 100%;
        box-sizing: border-box; /* Mantiene la larghezza perfetta dentro la card */
        outline: none;
        font-family: inherit;
    }

    input:focus {
        border-color: #8a2d5b;
    }

    /* 5. BOTTONE ROSA DI ACCESSO */
    button {
        background-color: #e75a9b;
        color: white;
        border: none;
        padding: 11px 20px;
        border-radius: 15px;
        font-size: 15px;
        cursor: pointer;
        margin-top: 10px;
        width: 100%;
        font-family: inherit;
        transition: background-color 0.2s;
    }

    button:hover {
        background-color: #d44787;
    }

    /* 6. LINK PER TORNARE ALLA REGISTRAZIONE O HOME */
    .link-back {
        display: inline-block;
        margin-top: 15px;
        color: #8a2d5b;
        text-decoration: none;
        font-size: 13px;
    }

    .link-back:hover {
        text-decoration: underline;
        color: #e75a9b;
    }
</style>
</head>
<body>

    <!-- TITOLO E SOTTOTITOLO -->
    <h1>Welcome back girl!💋</h1>
    <h2>Entra nel tuo profilo PinkClub</h2>

    <!-- SCHEDA CENTRALE PER IL LOGIN -->
    <div class="card">
        <form action="LoginServlet" method="post">

            <!-- Campo EMAIL / USERNAME -->
            <div class="campo">
                <label for="email">Email o Username:</label>
                <input type="email" id="email" name="email" placeholder="es. ragazza@pink.com" required>
            </div>

            <!-- Campo PASSWORD -->
            <div class="campo">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" placeholder="••••••••" required>
            </div>

            <!-- BOTTONE ACCEDI -->
            <button type="submit">Accedi 💖</button>

        </form>

        <!-- COLLEGAMENTO ALLA PAGINA DI REGISTRAZIONE -->
        <a href="registrazione.jsp" class="link-back">Non sei ancora iscritta? Registrati qui</a>
    </div>

</body>
</html>