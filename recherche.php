<?php
session_start();
$connexion = mysqli_connect("localhost", "nicolas", "Nicoju13", "nicolas-camilloni_autocompletion"); 
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Autocompletion - Recherche</title>
    <link rel="stylesheet" href="theme/style.css">
    <script src="js/jquery-3.4.1.js"></script>
    <script src="js/script.js"></script>
</head>
<body>
<?php
    include_once("header.php");
?>
<main>
    <section class="cmid">
        <article class="cchampions">
            <?php
                if ( isset($_GET["name"]) ) {
                    $name = $_GET["name"];
                    $requete = "SELECT * FROM champions WHERE nom LIKE '%$name%'";
                    $query = mysqli_query($connexion, $requete);
                    $resultat = mysqli_fetch_all($query);
                    foreach ($resultat as $key => $value) {
                        ?>
                            <a class="lien" href="element.php?idchamp=<?php echo $resultat[$key][0]; ?>"><div><img src="<?php echo $resultat[$key][4];?>" alt="champion" /><p><?php echo $resultat[$key][1];?></p></div></a>
                            <?php
                    }
                }
                else {
                    echo "<p class='error'>Aucun résultat</p>";
                }
            ?>
        </article>
    </section>
</main>
<?php
    include_once("footer.php");
?>
</body>
</html>