<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Pavlíkův skriptík - výpis položek</title>
</head>
<body>
    <?php    
    #includuju - připojím k souboru index.php soubor connect.php, ve kterém je připojení k databázi
    include 'connect.php';
    
    # napíšu si dotaz SELECT;
    # RADA - vždycky si první SELECT vložte do PHPMyAdminu, abyste si ověřili, že to 100% funguje
    $dotaz_na_databazi = "SELECT hry.id, nazev, hry.studio, studia.studio as nazev_studia, hry.zanr, zanry.zanr as nazev_zanru, cena, pristupnost FROM hry JOIN studia ON hry.studio=studia.id JOIN zanry ON hry.zanr=zanry.id ORDER BY hry.nazev ASC";
    # dotaz provedu
    $data = mysqli_query($pripojeni_k_databazi, $dotaz_na_databazi);
    
    # vypíšu část tabulky - nadpisy; nevypisuji ji v cyklus while, protože tam by se vypsala tolikrát, kolik mám v db záznamů
    # RADA - tabulu si můžete během 1 sekundy vygenerovat v PSPadu
    echo "<table>
          <tr>
            <th>Název hry</th>
            <th>Studio</th>
            <th>Žánr</th>
            <th>Cena</th>
          </tr>";
    
    while($zaznam_v_databazi = mysqli_fetch_array($data)){  
        # pomocí cyklu while postupně vypíšu všechny záznamy z databáze; při vypisování záznamu přidám buňky td
        echo "<tr>
                    <td>{$zaznam_v_databazi["nazev"]}</td>
                    <td>{$zaznam_v_databazi["nazev_studia"]}</td>
                    <td>{$zaznam_v_databazi["nazev_zanru"]}</td>
                    <td>{$zaznam_v_databazi["cena"]} Kč</td>
                    <td><a href='editace.php?id={$zaznam_v_databazi["id"]}' title='Editovat výrobek'>Editovat</a></td>
              </tr>"; 
    }
    
    #tabulku ukoncim
     echo "</table>";
    ?>
</body>
</html>