<?php

$name = $_POST["name"];
$connexion = mysqli_connect("db5000890310.hosting-data.io", "dbu594451", "S26n6j29p20m13!", "dbs781078");
$requete = "SELECT * FROM autocompletion_champions WHERE nom LIKE '%$name%'";
$query = mysqli_query($connexion, $requete);
$resultat = mysqli_fetch_all($query);

$tablename = json_encode($resultat);
echo $tablename;

?>