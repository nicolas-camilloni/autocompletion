<?php
$cnx = mysqli_connect("localhost", "root", "", "autocompletion"); 
if (isset($_GET['idchamp'])){
$idchamp=$_GET['idchamp'];
$sql="SELECT * FROM champions WHERE id = $idchamp";
$query= mysqli_query($cnx,$sql);
$resulta = mysqli_fetch_all($query, MYSQLI_ASSOC);
$taille = count($resulta);

}

?>

<html lang="fr">
<head>
    <meta charset="utf-8">
    <title>TFT Search - Element</title>
    <link rel="stylesheet" href="theme/style.css">
</head>
<body>
<?php
    include_once("header.php");
?>
<main>  
    <section class="cmid">
        <section class="element">
            <?php
        $i = 0;
        while($i < $taille){
            ?>
        <h1><?php echo $resulta[$i]["nom"]; ?></h1>
        <img src="<?php echo $resulta[$i]["image"]; ?>" height="150" width="150"><br>
        <p><?php echo $resulta[$i]["origin"]; ?></p>
        <p><?php echo $resulta[$i]["class"]; ?></p>
        <?php
        $i++;
    }
    ?>
        </section>
    </section>
</main>
<?php
    include_once("footer.php");
?>
</body>
</html>
<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
<script type="text/javascript" src="js/script.js"></script>