<?php require_once "bdd.php" ?>
<?php 

$abonne = $sql->prepare("SELECT * FROM abonne");
$abonne->execute();
$arrayAbonne = $abonne->fetchAll(PDO::FETCH_ASSOC);

// ---- LIVRE

$livre = $sql->prepare("SELECT * FROM livre");
$livre->execute();
$arrayLivre = $livre->fetchAll(PDO::FETCH_ASSOC);

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./style.css">
    <title>Document</title>
</head>
<body>
    <h1> DATA BIBLIOTHEQUE 📚</h1>
    <table>
        <thead>
            <tr>
                <th>Abonne</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($arrayAbonne as $values):  ?>
                <tr>
                    <td>
                        <?= $values['prenom'] ?>
                    </td>
                </tr>  
            <?php endforeach; ?>
        </tbody>

        <!-- ARRAY LIVRE  -->

        <table>
        <thead>
            <tr>
                <th>Auteur</th>
                <th>Livre</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach($arrayLivre as $values):  ?>
                <tr>
                    <td>
                        <?= $values['auteur'] ?>
                    </td>
                    <td>
                        <?= $values['titre'] ?>
                    </td>
                </tr>  
            <?php endforeach; ?>
        </tbody>
</table>
</body>
</html>