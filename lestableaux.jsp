<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Les tableaux</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les tableaux</h1>
<form action="#" method="post">
    <p>Saisir au minimum 3 chiffres à la suite, exemple : 6 78 15 <input type="text" id="inputValeur" name="chaine">
    <p><input type="submit" value="Afficher">
</form>

<% String chaine = request.getParameter("chaine"); %>

<% if (chaine != null && !chaine.isEmpty()) { %>
    <% String[] tableauDeChiffres = chaine.split("\\s+");
       int[] valeurs = new int[tableauDeChiffres.length];
       for (int i = 0; i < tableauDeChiffres.length; i++) {
           valeurs[i] = Integer.parseInt(tableauDeChiffres[i]);
       }
    %>
    <p>Le tableau contient <%= valeurs.length %> valeurs</p>
    
    <h2>Exercice 1 : Le carré de la première valeur</h2>
    <p><%= valeurs[0] * valeurs[0] %></p>

    <h2>Exercice 2 : La somme des 2 premières valeurs</h2>
    <p><%= valeurs[0] + valeurs[1] %></p>

    <h2>Exercice 3 : La somme de toutes les valeurs</h2>
    <% int somme = 0;
       for (int val : valeurs) {
           somme += val;
       }
    %>
    <p><%= somme %></p>

    <h2>Exercice 4 : La valeur maximale</h2>
    <% int max = valeurs[0];
       for (int val : valeurs) {
           if (val > max) max = val;
       }
    %>
    <p><%= max %></p>

    <h2>Exercice 5 : La valeur minimale</h2>
    <% int min = valeurs[0];
       for (int val : valeurs) {
           if (val < min) min = val;
       }
    %>
    <p><%= min %></p>

    <h2>Exercice 6 : La valeur la plus proche de 0</h2>
    <% int procheZero = valeurs[0];
       for (int val : valeurs) {
           if (Math.abs(val) < Math.abs(procheZero)) {
               procheZero = val;
           }
       }
    %>
    <p><%= procheZero %></p>

    <h2>Exercice 7 : La valeur la plus proche de 0 (2° version)</h2>
    <% int procheZeroV2 = valeurs[0];
       for (int val : valeurs) {
           if (Math.abs(val) < Math.abs(procheZeroV2) || (Math.abs(val) == Math.abs(procheZeroV2) && val > procheZeroV2)) {
               procheZeroV2 = val;
           }
       }
    %>
    <p><%= procheZeroV2 %></p>
<% } %>

<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
