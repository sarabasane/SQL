<?php require_once 'bdd.php';?>
<!-- require_once permet d'importer le fichier bdd.php dans l'index.php -->
<?php // OPEN PHP

$request = $sql->prepare("SELECT * FROM employes");
$request->execute();
$result = $request->fetchAll(PDO::FETCH_ASSOC);

/// INSERT INTO

//print_r($_POST)
if(isset($_POST['valider']))
{
    $prenom = $_POST['prenom'];
    $nom = $_POST['nom'];
    $sexe = $_POST['sexe'];
    $service = $_POST['service'];
    $salaire = $_POST['salaire'];

    $req = $sql->prepare("INSERT INTO employes VALUES 
    (NULL, :prenom, :nom, :sexe, :service, now(), :salaire)");
    $req->bindParam(':prenom', $prenom);
    $req->bindParam(':nom', $nom);
    $req->bindParam(':sexe', $sexe);
    $req->bindParam(':service', $service);
    $req->bindParam(':salaire', $salaire);
    $req->execute();
}


//echo "<pre>";
//var_dump($result);
//echo "</pre>";

// CLOSE PHP ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>TP ENTREPRISE 🏢</h1>
    <form method="POST">
        <label for="prenom">Prenom</label>
        <input type="" id="prenom" placeholder="Votre prenom..." name="prenom"/>

        <label for="nom">Nom</label>
        <input type="" id="nom" placeholder="Votre nom..." name="nom"/>

        <select name="sexe">
            <option value="f">Femme</option>
            <option value="m">Homme</option>
        </select>

        <select name="service">
            <option>Votre service</option>
            <option value="commercial">Commercial</option>
            <option value="production">production</option>
            <option value="informatique">Informatique</option>
            <option value="juridique">Juridique</option>
        </select>

        <label for="salaire">Salaire</label>
        <input type="" id="salaire" placeholder="Votre salaire..." name="salaire"/>

        <button name="valider">S'inscrire</button>
    </form>
    <?php foreach($result as $value): ?>
        <p>
           Prenom: <?php echo $value['prenom']; ?>
           Nom: <?php echo $value['nom']; ?>
        </p>
        <p>
           Sexe: <?php echo $value['sexe']; ?>
        </p>
        <p>
           Service: <?php echo $value['service']; ?>
        </p>
        <p>
           Date d'embauche: <?php echo $value['date_embauche']; ?>
        </p>
        <p>
           Salaire: <?php echo $value['salaire']; ?>
        </p>
    <?php endforeach; ?>

</body>
</html>