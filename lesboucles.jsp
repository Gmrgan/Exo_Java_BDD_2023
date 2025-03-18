<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Boucles</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les boucles</h1>
<form action="#" method="post">
    <label for="inputValeur">Saisir le nombre d'étoiles : </label>
    <input type="text" id="inputValeur" name="valeur">
    <input type="submit" value="Afficher">
</form>

<% String valeur = request.getParameter("valeur"); %>
<% if (valeur != null && !valeur.isEmpty()) { %>
    <% int cpt = Integer.parseInt(valeur); %>
    
    <h2>Exercice 1 : Le carré d'étoiles</h2>
    <pre>
    <% for (int i = 0; i < cpt; i++) { %>
        <% for (int j = 0; j < cpt; j++) { %>
            <%= "*" %>
        <% } %>
        <br>
    <% } %>
    </pre>
    
    <h2>Exercice 2 : Triangle rectangle gauche</h2>
    <pre>
    <% for (int i = 1; i <= cpt; i++) { %>
        <% for (int j = 0; j < i; j++) { %>
            <%= "*" %>
        <% } %>
        <br>
    <% } %>
    </pre>
    
    <h2>Exercice 3 : Triangle rectangle inversé</h2>
    <pre>
    <% for (int i = cpt; i > 0; i--) { %>
        <% for (int j = 0; j < i; j++) { %>
            <%= "*" %>
        <% } %>
        <br>
    <% } %>
    </pre>
    
    <h2>Exercice 4 : Triangle rectangle aligné à droite</h2>
    <pre>
    <% for (int i = 1; i <= cpt; i++) { %>
        <% for (int j = 0; j < cpt - i; j++) { %>
            <%= "&nbsp;" %>
        <% } %>
        <% for (int j = 0; j < i; j++) { %>
            <%= "*" %>
        <% } %>
        <br>
    <% } %>
    </pre>
    
    <h2>Exercice 5 : Triangle isocèle</h2>
    <pre>
    <% for (int i = 1; i <= cpt; i++) { %>
        <% for (int j = 0; j < cpt - i; j++) { %>
            <%= "&nbsp;" %>
        <% } %>
        <% for (int j = 0; j < i; j++) { %>
            <%= "*" %>
        <% } %>
        <br>
    <% } %>
    </pre>
    
    <h2>Exercice 6 : Le demi-losange</h2>
    <pre>
    <% for (int i = 1; i <= cpt; i++) { %>
        <% for (int j = 0; j < cpt - i; j++) { %>
            <%= "&nbsp;" %>
        <% } %>
        <% for (int j = 0; j < i; j++) { %>
            <%= "*" %>
        <% } %>
        <br>
    <% } %>
    <% for (int i = cpt - 1; i > 0; i--) { %>
        <% for (int j = 0; j < cpt - i; j++) { %>
            <%= "&nbsp;" %>
        <% } %>
        <% for (int j = 0; j < i; j++) { %>
            <%= "*" %>
        <% } %>
        <br>
    <% } %>
    </pre>
    
    <h2>Exercice 7 : Table de multiplication</h2>
    <pre>
    <% for (int i = 1; i <= 10; i++) { %>
        <%= cpt + " x " + i + " = " + (cpt * i) %><br>
    <% } %>
    </pre>
<% } %>

<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
