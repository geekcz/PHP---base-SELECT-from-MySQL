<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Pavlíkův skriptík - načtení položek pro editaci a následná editace</title>
</head>
<body>
    <?php    
    #includuju - připojím k souboru index.php soubor connect.php, ve kterém je připojení k databázi
    include 'connect.php';
    
    
    if(isset($_POST["nazev_hry"])){
    # podmínka, kterou zjistim, jestli se odesílá název hry
        
    # není to nutné, ale pro lepší orientaci si vytvořím proměnné, do kterých si uložím odesílané informace
        $nadpis = $_POST["nazev_hry"];
        $cena = $_POST["cena"]; 
        $studio = $_POST["studio"]; 
        
    # pomocí GET zjistim ID, které je v url adrese - editace_hry.php?id=8 - takže vezmu tu 8
        $id_hry  = $_GET["id"];

    # sql dotaz, pomocí kterého upravuju datab
    # do podmínky where dosazuju ID hry, které jsem si zjistil pomocí GET
    # LIMIT 1 je uveden proto, aby pokud se najde hledané ID, tak se již neprocházely data dále
    $sql = "UPDATE hry SET nazev = '$nadpis', cena = '$cena', studio = '$studio' WHERE id = '$id_hry' LIMIT 1;";
    # provedu
    $result = mysqli_query($pripojeni_k_databazi, $sql);
    # zeptám se pomocí podmínky na to, zda se to podařilo nebo ne
      if($result){
          echo "ok";
      } else {
          echo "Data nebyla vložena";   
      }
    }
    
    
    
    
    # napíšu si dotaz SELECT;
    # RADA - vždycky si první SELECT vložte do PHPMyAdminu, abyste si ověřili, že to 100% funguje
    $dotaz_na_databazi = "SELECT id, nazev, studio, zanr, cena, pristupnost, popis FROM hry WHERE hry.id={$_GET["id"]}";
    # dotaz provedu
    $data = mysqli_query($pripojeni_k_databazi, $dotaz_na_databazi);
    $nacteny_zaznam = mysqli_fetch_array($data);
    
  //  echo $nacteny_zaznam["nazev"];
    ?>
    
    <form method="post">
        <label>Název hry</label>
        <!-- klasicky si udělám input; do value (hodnota) napíšu echo, kde vypíšu název hry -->
        
        <!-- první možnost -->
        <input type="text" name="nazev_hry" value="<?php echo $nacteny_zaznam["nazev"]; ?>"></input>
    
        <!-- druhá možnost -->
        <?php // echo "<input type='text' name='nazev_hry' value='{$nacteny_zaznam['nazev']}'></input>"; ?>
    
        <!-- načtu cenu z databáze -->
        <label>Cena hry</label>
        <input type="text" name="cena" value="<?php echo $nacteny_zaznam["cena"]; ?>"></input>
    
        
        <label>Studio</label>
        <!-- v tabulce hry mám uložené ID studia (třeba 3,5,9) a v tabulce studia mám uložené k nim i názvy; uživateli chci samozřejmě zobrazit názvy, takže vytvořím SELECT -->
    
        <!-- html select = rámeček s možnostmi + pojmenuju (toto pojmenování budeme potřebovat až budeme ukládat editaci záznamu) -->
        <select name="studio">
        <?php
            # jednoduchy select, kde vypisu studia a seřadím je
            $nacteni_studii = "SELECT * FROM studia ORDER BY studio ASC";
            # provedu dotaz
            $jednotlive_studio = mysqli_query($pripojeni_k_databazi, $nacteni_studii);
            # pomocí cyklu while vypisuju studia
            while($zaznam_studio = mysqli_fetch_array($jednotlive_studio)){
    
                # abych mohl uživateli označit, které studio je vybrano, vytvořím podmínku; v ní se ptám, zda právě vypisované ID studia se rovná ID studia, které nyní edituji
                # nalezne se přesně jedna shoda a u ní si vytvořím nějakou promněnnou (v tomto případě $parametr), do které napíši selected
                # takže při vypisování studií je přesně jedna položka označena
                if($zaznam_studio["id"]==$nacteny_zaznam["studio"]){
                    $parametr = "selected";
                } else {
                # když vypisuji studio, které se nerovná studiu zadanému u editovaného produktu
                    $parametr = "";
                }
                echo "<option value='{$zaznam_studio["id"]}' $parametr>{$zaznam_studio["studio"]}</option>";
            }
        ?>
        </select>
    
        <!-- tímto jsme tedy načetli data pro editaci, k samotné editaci jsme se ve škole nedostali;
             pokud budete chtít a pomůže vám to, můžu vám editaci ještě udělat -->
        <input type="submit" value="Odešli Pavlíkovu skvělou editaci">
    </form>
</body>
</html>