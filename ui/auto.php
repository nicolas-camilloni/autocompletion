<?php
$cnx = mysqli_connect("localhost", "root", "", "autocompletion"); 
if (isset($_POST['search'])){
$search=$_POST['search'];
$sql="SELECT nom FROM champions WHERE nom LIKE '%".$search."%'";
$query= mysqli_query($cnx,$sql);
$results=array();
while($row = mysqli_fetch_array($query)){
    $results[] = array('label' => $row['nom']);
}
echo json_encode($results);
}

?>

