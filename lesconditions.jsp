<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Conditions</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les conditions</h1>
<form action="#" method="post">
    <p>Saisir la valeur A : <input type="text" id="inputValeurA" name="valeurA">
    <p>Saisir la valeur B : <input type="text" id="inputValeurB" name="valeurB">
    <p>Saisir la valeur C : <input type="text" id="inputValeurC" name="valeurC">
    <p><input type="submit" value="Afficher">
</form>

<% String valeurA = request.getParameter("valeurA"); %>
<% String valeurB = request.getParameter("valeurB"); %>
<% String valeurC = request.getParameter("valeurC"); %>

<% if (valeurA != null && valeurB != null && valeurC != null && !valeurA.isEmpty() && !valeurB.isEmpty() && !valeurC.isEmpty()) { %>
    <% int intA = Integer.parseInt(valeurA); %>
    <% int intB = Integer.parseInt(valeurB); %>
    <% int intC = Integer.parseInt(valeurC); %>
    
    <h2>Exercice 1 : Comparaison 1</h2>
    <% if ((intC >= intA && intC <= intB) || (intC >= intB && intC <= intA)) { %>
        <p>Oui, C est compris entre A et B.</p>
    <% } else { %>
        <p>Non, C n'est pas compris entre A et B.</p>
    <% } %>
    
    <h2>Exercice 2 : Pair ou Impair ?</h2>
    <% if (intA % 2 == 0) { %>
        <p>A est un nombre pair.</p>
    <% } else { %>
        <p>A est un nombre impair.</p>
    <% } %>
    
    <% if (intB % 2 == 0) { %>
        <p>B est un nombre pair.</p>
    <% } else { %>
        <p>B est un nombre impair.</p>
    <% } %>
    
    <% if (intC % 2 == 0) { %>
        <p>C est un nombre pair.</p>
    <% } else { %>
        <p>C est un nombre impair.</p>
    <% } %>
<% } %>

<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
