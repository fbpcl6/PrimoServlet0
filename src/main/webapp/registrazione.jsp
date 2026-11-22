<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Let's register girl!💋</title>
<style>
    /* STILE DEL CORPO DELLA PAGINA (Stessi colori di Benvenuto) */
    body {
        background-color: #fbe9f0; /* Sfondo rosa chiaro riposante */
        color: #8a2d5b;            /* Testo rosa scuro leggibile */
        font-family: Alice, serif;
       
        /* Centratura verticale e orizzontale */
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        min-height: 100vh;
        margin: 0;
        text-align: center;
    }
    h1 {
    font-family: 'Sacramento', cursive;
    font-size: 50px;
    color: #e75a9b;
    margin-bottom: 10px;
}

    /* SCHEDA BIANCA SEMITRASPARENTE */
    .card {
        background: rgba(255, 255, 255, 0.8); /* Scheda bianca morbida */
        padding: 25px 35px;
        border-radius: 20px;
        box-shadow: 0 4px 15px rgba(138, 45, 91, 0.12);
        margin-top: 15px;
    }

    /* CONTENITORE PER OGNI CAMPO */
    .campo {
        margin-bottom: 12px;
        display: flex;
        flex-direction: column;
        align-items: flex-start;
    }
    
    label {
        font-weight: bold;
        margin-bottom: 4px;
        font-size: 14px;
        color: #8a2d5b; /* Stesso rosa scuro per le etichette */
    }

    /* CASELLE DI TESTO (INPUT) */
    input {
        padding: 8px 12px;
        border: 2px solid #e75a9b; /* Bordo rosa acceso */
        border-radius: 10px;
        font-size: 14px;
        width: 250px;
        outline: none;
    }

    input:focus {
        border-color: #8a2d5b;
    }

    /* BOTTONE REGISTRATI */
    button {
        background-color: #e75a9b; /* Rosa acceso del bottone originale */
        color: white;
        border: none;
        padding: 10px 20px;
        border-radius: 15px;
        font-weight: bold;
        font-size: 15px;
        cursor: pointer;
        margin-top: 10px;
        width: 100%;
        transition: background-color 0.2s;
    }

    button:hover {
        background-color: #d44787;
    }
</style>
</head>
<body>

    <h1>PinkClub</h1>

    <h2>Non è mai troppo tardi per dare un tocco di rosa alla tua vita.</h2>
    <p>Compila il form sottostante ed entra nella community più esclusiva del web!</p>

    <!-- SCHEDA BIANCA CENTRALE -->
    <div class="card">
        <form action="RegistrazioneServlet" method="post">

            <!-- Campo NOME -->
            <div class="campo">
                <label for="nome">Nome:</label>
                <input type="text" id="nome" name="nome" placeholder="Inserisci il tuo nome" required>
            </div>

            <!-- Campo COGNOME -->
            <div class="campo">
                <label for="cognome">Cognome:</label>
                <input type="text" id="cognome" name="cognome" placeholder="Inserisci il tuo cognome" required>
            </div>

            <!-- Campo EMAIL -->
            <div class="campo">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" placeholder="es. ragazza@pink.com" required>
            </div>

            <!-- Campo PASSWORD -->
            <div class="campo">
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" placeholder="••••••••" required>
            </div>

            <!-- BOTTONE DI INVIO -->
            <button type="submit">Registrati 💖</button>

        </form>
    </div>

</body>
</html>