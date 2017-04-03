-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 07, 2016 at 03:25 PM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `pc_hry`
--
CREATE DATABASE `pc_hry` DEFAULT CHARACTER SET utf8 COLLATE utf8_czech_ci;
USE `pc_hry`;

-- --------------------------------------------------------

--
-- Table structure for table `hry`
--

CREATE TABLE `hry` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `nazev` varchar(30) collate utf8_czech_ci NOT NULL,
  `studio` tinyint(4) NOT NULL,
  `zanr` int(10) unsigned NOT NULL,
  `cena` int(10) unsigned NOT NULL,
  `pristupnost` enum('3','7','12','15','18') collate utf8_czech_ci NOT NULL COMMENT 'od ...',
  `popis` text collate utf8_czech_ci NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `nazev` (`nazev`),
  KEY `zanr` (`zanr`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `hry`
--

INSERT INTO `hry` (`id`, `nazev`, `studio`, `zanr`, `cena`, `pristupnost`, `popis`) VALUES
(1, 'Far Cry 3 ', 1, 6, 800, '18', 'Hráči Far Cry 3 se ocitnou v kůži Jasona Brodyho, muže osamoceně stojícího na okraji světa na tajemném tropickém ostrově odříznutém od civilizace. V tomto brutálním ráji, kde zločin a násilí představují jediné jistoty, budou hráči rozhodovat, kdy a jakým způsobem se budou události hry vyvíjet. \r\n\r\nZa hranicemi civilizace se rozkládá jeden ostrov, kde neplatí žádné zákony, je to místo, kterému vévodí pirátství a lidská bída, a odkud je úniku pouze skrze drogy nebo kulku do hlavy. A přesně tady se ocitáte. Zůstali jste trčet tam, kde se nerozlišuje dobro od zla, na místě, které se řídí principy násilí. Odhalte krvavá tajemství tohoto ostrova a postavte se tváří v tvář nepříteli; improvizujte a k přežití využijte okolního prostředí. Mějte se na pozoru před krásami a záhadami tohoto neprobádaného ráje a přežijte, abyste vyzráli nad celou řadou bezcitných lidí bez naděje. Na to, abyste přežili, vám totiž pouhé štěstí stačit nebude.\r\n\r\nHráči se budou prosekávat, plížit a prostřelovat ostrovem ve světě, kde slova jako dobro a zlo ztratila svůj význam.\r\n'),
(2, 'Assassin''s Creed III', 1, 1, 1000, '18', 'Na pozadí americké revoluce koncem 18. století, Assassin Creed III představí nového hrdinu, Ratohnaké:ton, napůl domorodý američan, napůl angličan, osvojující si jméno Conner, který se stává novým hlasem spravedlnosti ve starověké válce mezi Templáři a Asasíny. Hráči se stanou Asasínem uprostřed boje za svobodu proti bezohledné tyranii, nabízející nejstylizovanější bojové možnosti, jaké byly kdy představeny. Assassin Creed III se odehrává v době Revoluční války v Americe, jež vezme hráče na pouť nezkrotnou divočinou, nazvanou prostě „frontier“, do vibrujících, rozrůstajících se koloniálních měst a samozřejmě na intenzivní a chaotické bojiště, kde se Georgie Washington a jeho kontinentální armády potkávají s impozantní britskou armádou.\r\n\r\nAssassin Creed III stojí na zcela novém enginu, Ubisoft-AnvilNext přinášejícím naprostou revoluci v sérii díky vizuální kvalitě, modelování postav a umělé inteligenci. Assassin Creed III nabídne průkopnickou ohromující grafiku, přivádějící koloniální Ameriku k životu.\r\n\r\nNa Assassin Creed III pracuje Ubisoft Montreal ve spolupráci s dalšími šesti studii Ubisoftu.'),
(3, 'Need For Speed Most Wanted', 2, 10, 800, '12', 'Need for Speed Most Wanted přinese obrovský otevřený svět, kde si každý může vybrat vlastní cestu k tomu, jak se stát nejhledanějším pirátem silnic. Hráči budou moci svobodně jezdit úplně všude, objevovat skryté herní prvky, sundávat ze silnice protivníky, vyzývat na souboje přátele nebo se jen tak projíždět a provokovat policajty. Veškeré jejich počínání je přiblíží konečnému cíli stát se jedničkou na seznamu „Most Wanted“.\r\n\r\nKaždý závod má start a cíl, ale pro jaký styl se rozhodnou, kdy a kde se soutěž uskuteční a jaké prostředky při tom využijí, to vše záleží pouze na hráčích. Ti budou navíc svádět souboje o prvenství s přáteli prostřednictvím sítě Autolog. Studio Criterion přichází s novým standardem v oblasti soutěžení mezi hráči na bázi doporučování úkolů a výzev na herní síti, a to v režimech pro jednoho i více hráčů. Za vše, co hráči v Need for Speed Most Wanted udělají, získají Speed Points, které je posunou blíže vysněnému cíli. Připravte se na lov nejlepších časů, nejdramatičtější honičky s policajty o nejvyšší skóre, hledání nejšílenějších ramp pro skoky a mnoho dalšího.\r\n\r\nAutolog 2.0 se postará o nikdy nekončící konkurenční boj a překonávání nových rekordů. Doporučení Autologu jsou navíc přímo rozšířena také na multiplayerovou část Need for Speed Most Wanted. Už žádné přihlašování do místností, nebo nudné čekání. Hráči prostě jen naskočí do velkého onlinového světa a okamžitě dostanou porci testů, zkoušek a výzev.'),
(4, 'Medal of Honor: Warfighter', 2, 6, 500, '18', 'Vstupte do řad příslušníků jednotek Tier 1 - elitních bojovníků, jimž se nemůže téměř nikdo rovnat - a zúčastněte se války proti terorismu v různých oblastích po celém světě. Čeká vás mnoho misí založených na skutečných událostech, ať už jde třeba o záchranu rukojmí z pevnosti Abú Sajáfa na filipínském ostrově Basilian nebo o útok na „město pirátů“ Al-Šabáb na somálském pobřeží. Medal of Honor Warfighter je jedinou hrou, která vám dovolí zúčastnit se těchto událostí a na vlastní kůži si prožít, co všechno se tam mohlo udát.\r\n\r\nMedal of Honor Warfighter jde i za hranice bojiště a odhaluje srdceryvné příběhy vyprávěné z pohledu rodin zdejších vojáků. Příběh hry Medal of Honor Warfighter, který sepsali samotní členové těchto speciálních jednotek, představuje velice osobní zpověď a ukazuje oběti, které musí přinášet nejen vojáci, ale i jejich rodiny.'),
(5, 'XCOM Enemy Unknown', 3, 7, 800, '15', 'XCOM: Enemy Unknown klade rovnoměrný důraz na propracovanou strategii i na intenzivní taktický boj, zatímco hráče nechá řídit tajnou paramilitární organizaci zvanou XCOM. V roli velitele XCOMu se budou hráči bránit před děsivou globální invazí mimozemšťanů tím, že budou hospodařit se zdroji, vylepšovat technologie a dohlížet na bojové strategie a individuální taktiku jednotek.\r\n\r\n\r\nPůvodní X-COM vyšel roku 1993, přičemž je širokou veřejností považován za jednu z nejlepších her, jaké byly kdy vyrobeny, a nyní se chystá jeho přepracování pod taktovkou strategických expertů z Firaxis Games. XCOM: Enemy Unknown na tento odkaz navazuje skrze zcela nový invazní příběh, nepřátele a technologie, které budou sloužit k boji s mimozemšťany a k obraně Země. Hráči rozhodnou o osudu lidské rasy prostřednictvím zkoumání mimozemských technologií, budování a řízení plně akceschopné základny, plánování bojových misí a ovládání pohybu vojáků v bitvě.\r\n'),
(6, 'FIFA 13', 4, 9, 800, '7', 'Zcela nová „inteligence v útoku“, jež bude motorem FIFA 13 na konzolích i PC, umožní hráčům analyzovat okolní prostor, důrazněji a chytřeji pronikat přes obranu soupeře a myslet dopředu. Virtuální hráči nyní disponují dostatečnou inteligencí k tomu, aby se sami vysouvali do prostoru, nabíhali obloukem, nebo dokonce měnili směr běhu tak, aby dokázali využít okének v obraně. Budou se pokoušet natáhnout na sebe obránce a otevřít tak prostor pro přihrávky spoluhráčům. Lépe si také budou sami hledat prostor pro tvoření šancí.\r\n\r\nSystém zpracování míče ve FIFA 13 ruší téměř perfektní schopnost každého fotbalisty obdržet pas a celkově činí držení míče mnohem variabilnějším a méně předvídatelným. Schopnost hráče zpracovat míč nyní ovlivňují faktory jako je tlak bránících protihráčů či trajektorie a rychlost míče, čímž otevírají další možnosti pro obránce.\r\n\r\nÚtočníci zase získají vylepšený systém driblignu, který umožní precizní vedení míče v rozsahu 360°, takže je pro ně jednodušší vytvářet zajímavější a nebezpečnější situace ve hře 1 na 1. Rovněž lze rychleji měnit směr pohybu, dynamičtěji vyrážet za míčem a delší dobu efektivněji stínovat obránce.\r\n\r\nDruhá generace Player Impact Engine nyní kromě duelů o míče řídí i souboje fotbalistů bez míče. Hráči se drží a postrkují, využívají své výšky a síly nebo nutí protivníka ke špatnému přijetí přihrávky či zbrklému rozhodnutí. Nástroj taktických volných kopů ve FIFA 13 je určen technicky nejzdatnějším borcům na hřišti, kteří s jeho pomocí mohou vymýšlet a realizovat nebezpečné a nepředvídatelné volné kopy. K míči lze nyní postavit až tři útočící hráče a využívat falešné rozběhy či naznačené přihrávky k zahrávání sofistikovaných signálů při standardních situacích. Soupeř jim však může čelit přidáním či odebráním hráčů ze zdi, jejím pomalým posunem dopředu nebo nasazením rychlého běžce k zachycení přihrávky, či zblokování střely. '),
(7, 'Guild Wars 2', 5, 2, 1000, '12', 'Původní série Guild Wars se již ve světě prodalo více než 6 miliónů kusů a stále se může těšit ze silné hráčské základny, která se netrpělivě těší na každé další pokračování. Jejím prvním dílem byly Guild Wars Prophecies, které vyšly v roce 2005. Pak následovaly datadisky Guild Wars Factions, Guild Wars Nightfall a Guild Wars: Eye of the North. Guild Wars 2 vychází z této bohaté tradice, avšak celý příběh posouvá o 250 let do budoucnosti, kdy Tyria vypadá zcela jinak.\r\n\r\nK hraní této onlinové hry nejsou vyžadovány žádné měsíční poplatky!\r\n\r\nVlastnosti produktu:\r\n\r\n \r\n\r\n    Dynamické a interaktivní hraní. Vaše rozhodnutí a reakce přímo ovlivňují svět kolem vás. Pustí se obležení vesničané do boje s tlupou zuřivých kentaurů, nebo se vzdají? To závisí pouze na vás!\r\n    Personalizovaný příběh. Guild Wars 2 vypráví váš vlastní příběh. Putujte po vlastní úkolové linii, která se odvíjí v závislosti na rozhodnutích, která učiníte na začátku hry.\r\n    Nové možnosti úpravy postav. Můžete si vybrat z bohaté škály povolání a z pěti ras, které tvoří vzdorní lidé, kočkovití charrové, nadpozemští sylvari, mocní nornové a vynalézaví asurané.\r\n    Inovativní bojový systém, ve kterém lze využívat spousty různých schopností, komb, taktické improvizace a využívat okolí. Systém Guild Wars 2 tak okoření MMO bitvy spoustou skvělé zábavy.\r\n    Intenzivní akce hráčů proti hráčům (PvP). Chopte se zbraní v bitvě obrovských světů, nebo vstupte do arény a změřte své síly s ostatními hráči zde.\r\n    Bohatý a propracovaný fantasy svět. Od chvíle, kdy svět Tyrie ožil poprvé, uplynulo již celých pět let, a po celou dobu jej vylepšoval cenami ověnčený tým zkušených vývojářů.\r\n     \r\n\r\nMinimální systémové požadavky:\r\n\r\nOS: Windows® XP Service Pack 2 nebo lepší\r\n\r\nProcesor: Intel® Core™ 2 Duo 2.0 GHz, Core i3, AMD Athlon™ 64 X2 nebo lepší\r\n\r\nGrafická karta: NVIDIA® GeForce® 7800, ATI Radeon™ X1800, Intel HD 3000 nebo lepší (256MB RAM a shader model 3.0 nebo lepší)\r\n\r\nHardisk: 25GB volného místa nad disku\r\n\r\nInternetové připojení\r\n\r\nDiskutujte s komunitou a získávejte další informace na české stránce věnované hře Guild Wars 2: www.guildwars2.cz\r\n\r\nVíce informací naleznete také na oficiálních stránkách: http://www.guildwars2.com/en/  (stránka je v anglickém jazyce)'),
(8, 'Risen 2: Dark Waters', 6, 1, 1000, '15', 'Několik let po událostech v prvním Risen, pokračování vrhne hráče do zničeného světa, kde řádící titáni zničili planetu a způsobili lidstvu téměř vyhynutí. Současně s tím se z hlubin moře vynořily obrovské vodní příšery, které začaly útočit a zastavily téměř veškerou námořní dopravu. Hrdina, nový člen inkvizice, je poslán, aby zjistil jako zastavit tento chaos způsobený monstry z hlubin moře. Jeho úkol začíná s povídačkami, které znají jenom piráti jižních ostrovů.\r\n\r\nSpolu s novým pirátským prostředím, Risen 2: Dark Watres, kombinuje milované prvky RPG z originálního Risen spolu s novými tématy a prostředím nejrůznějších ostrovů. Risen 2: Dark Watres zůstává stále tou akční hrou jako předchozí titul.'),
(9, 'Rayman Origins', 1, 5, 100, '3', ''),
(10, 'Mass Effect Trilogy', 7, 1, 1000, '18', 'Mass Effect Trilogy obsahuje:\r\n\r\nDLC pro PC:\r\nMass Effect - Bring Down the Sky a Pinnacle Station on disk.\r\nMass Effect 2 - Cerberus Network obsahující Zaeed – The Price of Revenge, The Firewalker Pack, Cerberus Assault Gear, Arc Projector těžké zbraně a Normandy Crash mise.\r\nMass Effect 3 - Online Pass garantující přístup do co-op multiplayeru.');

-- --------------------------------------------------------

--
-- Table structure for table `studia`
--

CREATE TABLE `studia` (
  `id` tinyint(3) unsigned NOT NULL auto_increment,
  `studio` varchar(30) collate utf8_czech_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci AUTO_INCREMENT=8 ;

--
-- Dumping data for table `studia`
--

INSERT INTO `studia` (`id`, `studio`) VALUES
(1, 'Ubisoft'),
(2, 'Electronic Arts'),
(3, '2k Games'),
(4, 'EA Sports'),
(5, 'NCSoft - ArenaNet'),
(6, 'Deep Silver'),
(7, 'EA - Bioware');

-- --------------------------------------------------------

--
-- Table structure for table `zanry`
--

CREATE TABLE `zanry` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `zanr` varchar(20) collate utf8_czech_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci AUTO_INCREMENT=11 ;

--
-- Dumping data for table `zanry`
--

INSERT INTO `zanry` (`id`, `zanr`) VALUES
(1, 'RPG'),
(2, 'MMORPG'),
(3, 'Logická'),
(4, 'Simulace'),
(5, 'Adventura'),
(6, 'Shooter'),
(7, 'Strategie'),
(8, 'Společenské'),
(9, 'Sportovní'),
(10, 'Závodní');
