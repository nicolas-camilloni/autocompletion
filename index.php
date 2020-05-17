<!doctype html>
<html lang="fr">
<head>
    <meta charset="utf-8">
    <title>TFT</title>
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
        <h1 class="tftdbtitle">TFT Database</h1>
        <form method="get" action="recherche.php">
        <article class="searchIndex">
            <input name="name" type="text" class="searchIndexText" />
            <input type="submit" id="searchSubmit" class="searchIndexSubmit" value="" />
        </article>
        </form>
    </section>
</main>

<?php
include_once("footer.php");
?>
</body>
</html>