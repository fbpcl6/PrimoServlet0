<%-- DIRETTIVA JSP: Istruzione per il server Tomcat. Gestisce la codifica caratteri in UTF-8 per supportare accenti ed emoji 🌸 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hi Girl!💋</title>

<style>
    /* 1. STILE DEL CORPO DELLA PAGINA (BODY) */
    body {
        background-color: #fbe9f0; /* Colore di sfondo rosa chiaro */
        color: #8a2d5b;            /* Colore del testo principale (rosa scuro) */
        font-family: "Trebuchet MS", sans-serif; /* Carattere del testo */
        
        /* Centra tutto il contenuto al centro esatto dello schermo */
        display: flex;
        align-items: center;       /* Centra in verticale */
        justify-content: center;  /* Centra in orizzontale */
        min-height: 100vh;         /* Occupa l'intera altezza dello schermo */
        margin: 0;                 /* Rimuove i bordi bianchi esterni di default */
        text-align: center;        /* Allinea i testi al centro */
    }
 h1 {
    font-family: 'Lucida Handwriting', 'Brush Script MT', 'Monotype Corsiva', cursive;
    font-size: 60px;
    color: #e75a9b;
    margin-bottom: 10px;
}
    /* 2. CONTENITORE PRINCIPALE: Affianca la foto a sinistra e la scheda a destra */
    .main-wrapper {
        display: flex;             /* Attiva il layout Flexbox per affiancare gli elementi */
        flex-direction: row;       /* Dispone gli elementi in orizzontale (riga) */
        align-items: center;       /* Allinea perfettamente al centro verticale la foto e la scheda */
        gap: 30px;                 /* Crea uno spazio di 30px tra la foto e la scheda centrale */
    }

    /* 3. STILE PER L'IMMAGINE BRATZ (a sinistra) */
    .bratz-img {
        width: 200px;              /* Larghezza della foto (puoi cambiarla a piacimento) */
        height: auto;              /* Mantiene le proporzioni originali dell'immagine */
        border-radius: 15px;       /* Arrotonda leggermente gli angoli della foto */
    }

    /* 4. SCHEDA CENTRALE (CARD) CHE RACCHIUDE IL TESTO */
    .card {
        background: rgba(255, 255, 255, 0.7); /* Sfondo bianco semitrasparente (70% opacità) */
        padding: 25px 35px;        /* Spazio interno attorno al testo (sopra/sotto e lati) */
        border-radius: 20px;       /* Rende gli angoli della scheda morbidi e arrotondati */
        box-shadow: 0 4px 15px rgba(138, 45, 91, 0.1); /* Piccola ombra rosa per staccarla dallo sfondo */
    }

    /* 5. CONTENITORE AFFIANCATO PER I DUE BOTTONI */
    .button-container {
        display: flex;             /* Mette i due link/bottoni uno di fianco all'altro */
        gap: 15px;                 /* Crea 15px di spazio intermedio tra i due bottoni */
        justify-content: center;   /* Centra i bottoni all'interno della card */
        margin-top: 15px;          /* Distanzia i bottoni dal testo soprastante */
    }

    /* 6. RIMUOVE LA SOTTOLINEATURA BLU DAI LINK <a> */
    .button-container a {
        text-decoration: none;     /* Toglie la linea sotto al testo dei collegamenti */
    }

    /* 7. STILE GRAFICO DEI BOTTONI ROSA */
    button {
        background-color: #e75a9b; /* Colore rosa dei bottoni */
        color: white;              /* Colore del testo dentro il bottone */
        border: none;              /* Rimuove il bordo grigio di default */
        padding: 8px 18px;         /* Spazio interno al bottone (8px alto/basso, 18px lati) */
        border-radius: 15px;       /* Arrotonda gli angoli del bottone */
        cursor: pointer;           /* Mostra la manina quando ci passi sopra col mouse */
        font-family: inherit;      /* Usa lo stesso font "Trebuchet MS" della pagina */
        font-size: 14px;
    }
</style>
</head>
<body>

    <!-- CONTENITORE PRINCIPALE (racchiude Foto + Scheda) -->
    <div class="main-wrapper">
    
        <!-- FOTO POSIZIONATA A SINISTRA (caricata nella cartella WebContent/images/) -->
        <img src="images/bratz.png" alt="Bratz PinkClub" class="bratz-img">

        <!-- SCHEDA ROSA/BIANCA A DESTRA CON TESTO E BOTTONI -->
        <div class="card">
            <h1>Benvenuta nel PinkClub!</h1>
            <p>L'unico e solo club per le vere amanti del rosa!</p>
            <p>Registrati oppure accedi per vedere il tuo profilo:</p>
            
            <!-- CONTENITORE PER I BOTTONI AFFIANCATI -->
            <div class="button-container">
                <!-- Link alla pagina di registrazione -->
                <a href="registrazione.jsp"><button type="button">Registrati🎀</button></a>
                
                <!-- Link alla pagina di login -->
                <a href="login.jsp"><button type="button">Accedi💕</button></a>
            </div>
        </div>

    </div>

</body>
</html>