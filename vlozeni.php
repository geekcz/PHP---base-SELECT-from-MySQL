<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Pavlíkův skriptík - vložení hry</title>
</head>
<body>
    <?php    
    #includuju - připojím k souboru index.php soubor connect.php, ve kterém je připojení k databázi
    include 'connect.php';
    
	if(isset($_POST["nazev_hry"])){
		if($_POST["nazev_hry"]==""){echo "Není zadán název hry.";}
		if($_POST["cena"]==""){echo "Není zadána cena hry.";}
		else{
			$nadpis = $_POST["nazev_hry"];
			$cena = $_POST["cena"];
			$studio = $_POST["studio"];
			$zanr = $_POST["zanr"];
			$popis = $_POST["popis"];
            
            
				$sql = "INSERT INTO `hry` (`nazev`, `cena`, `studio`, `zanr`, `popis`) VALUES ('$nadpis', '$cena', '$studio', '$zanr', '$popis');"; 
				$dotaz = mysqli_query($pripojeni_k_databazi, $sql);
				if($dotaz){
					echo "ok";
                } else {
                    echo "no";
                }
			}
		}

    
    
    ?>
    
    <form method="post">
        <label>Název hry</label>
        
        <input type="text" name="nazev_hry"></input>
    
        <label>Cena hry</label>
        <input type="text" name="cena"></input>
    
        
        <label>Studio</label>
        <select name="studio">
        <?php
            $nacteni_studii = "SELECT * FROM studia ORDER BY studio ASC";
            $jednotlive_studio = mysqli_query($pripojeni_k_databazi, $nacteni_studii);
            while($zaznam_studio = mysqli_fetch_array($jednotlive_studio)){
                echo "<option value='{$zaznam_studio["id"]}'>{$zaznam_studio["studio"]}</option>";
            }
        ?>
        </select>    
        
        <label>Žánr</label>
        <select name="zanr">
        <?php
            $nacteni_zanru = "SELECT * FROM zanry";
            $jednotlive_zanry = mysqli_query($pripojeni_k_databazi, $nacteni_zanru);
            while($zaznam_zanr = mysqli_fetch_array($jednotlive_zanry)){
                echo "<option value='{$zaznam_zanr["id"]}'>{$zaznam_zanr["zanr"]}</option>";
            }
        ?>
        </select>
    
        <label>Popis</label>
        <input type="text" name="popis"></input>

        <input type="submit" value="Vložit">
    </form>
</body>
</html>