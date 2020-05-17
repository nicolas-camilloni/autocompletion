<?php

$name = $_POST["name"];
$connexion = mysqli_connect("localhost", "root", "", "autocompletion");
$requete = "SELECT * FROM champions WHERE nom LIKE '%$name%'";
$query = mysqli_query($connexion, $requete);
$resultat = mysqli_fetch_all($query);

$tablename = json_encode($resultat);
echo $tablename;

?>