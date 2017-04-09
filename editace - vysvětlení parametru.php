<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Pavlíkův skriptík - dovysvětlení $parametru</title>
</head>
<body>
    <?php    
    include 'connect.php';
    $dotaz_na_databazi = "SELECT id, nazev, studio, zanr, cena, pristupnost, popis FROM hry WHERE hry.id={$_GET["id"]}";
    $data = mysqli_query($pripojeni_k_databazi, $dotaz_na_databazi);
    $nacteny_zaznam = mysqli_fetch_array($data);
    ?>
        <label>Studio</label>
        <select name="studio">
        <?php
            $nacteni_studii = "SELECT * FROM studia ORDER BY studio ASC";
            $jednotlive_studio = mysqli_query($pripojeni_k_databazi, $nacteni_studii);
            while($zaznam_studio = mysqli_fetch_array($jednotlive_studio)){
    
                # $parametr je prostě proměnná, kterou si vytvořím; cílem je to, abych označil jedno studio, které je v databázi označeno v tabulce 'hry' IDčkem; právě se necházíme v cyklu while, který začíná na řádku 19 - ten postupně vere z databáze položky a vypisuje je; při tomto opakovaném cyklu tak vytvořím podmínku, která se provede tolikrát, kolik položek vypusuju
                # ptám se, jestli hra.studio (tam je uložené nějaké číslo, třeba 3) se rovná studia.id (v tabulce studia je uložen i název toho studia, který vypisuju na řádku 29 {$zaznam_studio["studio"]}); pokud se rovná, tak vím, který vypisovaný záznam mám označit (v HTML se označuje 'selected'); pokud se v pomnínce zjistí, že 3==4 (cože se nerovná), tak místo 'selected' nechci dávat nic, taže napíšu "" nebo " ";
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
</body>
</html>