<?php require_once 'bdd.php';?>
<?php

$request = $sql->prepare("SELECT * FROM agence");
$request->execute();
$result = $request->fetchAll(PDO::FETCH_ASSOC);

echo "<pre>";
var_dump($result);
echo "</pre>";
?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TP IMMOBILIER</title>
</head>
<body>
    
</body>
</html>