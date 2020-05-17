<html lang="fr">
<head>
    <meta charset="utf-8">
    <title>TFT Search - Accueil</title>
    <link rel="stylesheet" href="../theme/style-ui.css">
    <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.1/themes/base/minified/jquery-ui.min.css" type="text/css" /> 
</head>
<body>
<?php
    include_once("header-ui.php");
?>
<main>  
     <section class="cmid">
        <form method="get" action="../recherche.php" class="searchMid">
            <input type="text" name="name" />
            <input type="submit" />
        </form>
    </section>
</main>
<?php
    include_once("footer-ui.php");
?>
</body>
</html>
<script type="text/javascript" src="../js/jquery-3.4.1.js"></script>
<script type="text/javascript" src="http://code.jquery.com/ui/1.12.0/jquery-ui.js"></script>
<script type="text/javascript" src="../js/scriptui.js"></script>
