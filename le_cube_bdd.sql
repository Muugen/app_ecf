-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 15 avr. 2021 à 07:18
-- Version du serveur :  10.4.18-MariaDB
-- Version de PHP : 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `le_cube_bdd`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `id_a` int(11) NOT NULL,
  `titre` varchar(150) NOT NULL,
  `auteur` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `description` text NOT NULL,
  `id_cat` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id_a`, `titre`, `auteur`, `image`, `date`, `description`, `id_cat`) VALUES
(1, 'L’énorme coup de pression de Steph Curry', 'Anthony HUYNH', 'stephen_curry.jpg', '2021-04-01', 'Les Warriors sont sans doute l’équipe la plus difficile à appréhender en NBA. Capables de coups d’éclat et de victoires de prestige, les hommes de Steve Kerr peuvent aussi montrer un niveau pitoyable et subir de lourdes défaites. Après l’humiliation face aux Lakers, Stephen Curry a d’ailleurs remis les pendule à l’heure !\r\n\r\nAprès une excellente victoire sur leur parquet face à la meilleure équipe de la ligue, Utah, les Warriors attendaient les Lakers de pied ferme ce lundi. Stephen Curry est dans la forme de sa vie, Draymond Green restait sur une performance historique, il y avait donc de forts motifs d’espoir pour les joueurs de Steve Kerr… Malheureusement, il n’y a pas eu match.\r\nFace au triple-double de LeBron James et surtout au meilleur match en carrière de la pépite Talen Horton-Tucker, Golden State n’a rien pu faire, subissant une nouvelle grosse défaite… Pour Stephen Curry, c’est d’ailleurs l’humiliation de trop. Le Chef a mis un gros coup de pression à tout le vestiaire après la rencontre.', 1),
(2, 'Le MSI change de format pour 2021', 'Anthony HUYNH', 'msi_cup.jpeg', '2021-04-02', 'En parallèle de la confirmation sur la bonne tenue du Mid-Season Invitational (MSI) du 6 au 23 mai à Reykjavik, en Islande, Riot Games a confirmé un changement de format pour le tournoi.\r\n\r\nRIOT GAMES ADAPTE SON TOURNOI\r\nUne nouvelle qui a été accueillie avec soulagement du côté des fans de la scène compétitive de League of Legends : le Mid-Season Invitational aura bien lieu en 2021. Créé en 2015, le Mid-season Invitational est le premier événement international de la saison de compétition et regroupe les champions de chaque ligue régionale (LEC, LCS, LCK, LPL, etc.). Malheureusement, l\'édition 2020 n\'a pas pu se tenir à cause de l\'épidémie de COVID-19 et des différentes mesures sanitaires prises par l\'ensemble des pays ; initialement prévu au mois de mai et repoussé une première fois en juillet, Riot Games avait dû prendre la décision de ne pas maintenir le MSI en 2020.\r\n\r\nHier, Riot Games a confirmé que le deux de ses plus gros événements esport de l\'année, dont le Mid-Season Invitational, auront lieu à la suite, en mai à Reykjavik (Islande), et que l\'ensemble des matchs va avoir lieu au stade fermé de Laugardalshöll, où a eu lieu l\'historique « match du siècle » du Championnat du monde d\'échecs de 1972. \r\n\r\nRiot Games a également confirmé que l\'organisation et le format du tournoi vont changer et s\'adapter à l\'actuelle situation sanitaire mondiale. Avant que le tournoi commence, les équipes qualifiées pour le tournoi seront mises en quarantaine à leur arrivée en Islande, Riot Games adoptant ainsi le même dispositif que pour le Championnat du monde de 2020 qui a eu lieu en Chine. En ce qui concerne le format, cette édition 2021 sera l\'occasion de tirer un trait sur les \"qualifications\", phase du tournoi connu sous le nom de \"Play-In\", ce qui signifie que toutes les équipes de toutes les régions commenceront à présent à la même phase du MSI.\r\n\r\nLe Mid-Season Invitational 2021 sera donc décomposé en trois phases : \r\n\r\nPhase 1 : les 12 équipes (ligues majeures et Wildcard) commencent ici, réparties en trois groupes de quatre équipes. Chacun de ces groupes jouera un double tournoi à la ronde en 1 manche. Les 2 meilleures équipes de chaque groupe accéderont à la phase suivante.\r\nPhase 2 : Groupes - les six équipes restantes disputent un nouveau double tournoi à la ronde en 1 manche. Les quatre meilleures équipes accéderont à des play-offs.\r\nPhase 3 : Élimination directe - Les quatre meilleures équipes accéderont à une phase d\'élimination directe en trois manches gagnantes, qui représentera la demi-finale, suivie de la finale.\r\n \r\n\r\nINFORMATIONS GÉNÉRALES\r\nDénomination : Mid-Season Invitational 2021\r\nDates : du 6 au 22 mai\r\nLieu : offline / Iceland\r\nÉquipes : 12 équipes - le champion de chaque ligue régionale\r\nFormat : \r\n     Stage 1 : 3 groupes de 4 équipes / Double Round Robin en BO1 / Le top 2 se qualifie pour le Stage 2\r\n     Stage 2 : 1 groupe de 6 équipes / Double Round Robin en BO1 / Le top 4 se qualifie pour le Stage 3\r\n     Stage 3 : arbre à élimination directe / Demi-finales et finale en BO5', 2),
(3, 'Des bitcoins vendus demain aux enchères', 'Anthony HUYNH', 'bitcoin.jpg', '2021-04-03', 'Cette vente pourrait rapporter 26 millions d\'euros à l\'Etat au cours actuel du bitcoin. © PIRO4D/Pixabay\r\nC\'est une vente aux enchères un peu particulière qui se déroulera le 17 mars. Pour la première fois, des bitcoins seront proposés au public. Cette vente, prévue depuis plusieurs mois, arrive à point nommé, alors que le cours de la cryptomonnaie s\'est envolé depuis fin octobre, jusqu\'à dépasser les 50 000 dollars. Elle fait suite à la saisie par la justice de bitcoins appartenant à un cybercriminel, rapporte Le Figaro. Au total, la maison de ventes Kapandji Morhange distribuera 611 bitcoins, qui pourraient rapporter environ 26 millions d\'euros.\r\n\r\nUn beau pactole comparé aux 270 000 euros environ que valait le magot lorsqu\'il a été saisi, alors que le bitcoin évoluait autour de 4 500 euros. \"Le produit de la vente pourrait abonder le budget général de l\'Etat, si une peine de confiscation définitive était prononcée au terme de la procédure judiciaire\", précise au Figaro Nicolas Bessone, directeur général de l\'Agrasc, l\'Agence de gestion et de recouvrement des avoirs saisis et confisqués, qui dépend du ministère de la Justice et de Bercy. \"En cas de relaxe, le produit de la vente serait restitué\", ajoute-t-il.\r\n\r\nÀ lire aussi — Qui se cache derrière Satoshi Nakamoto, le mystérieux créateur du bitcoin jamais identifié ?\r\n\r\nInscriptions jusqu\'au 13 mars pour y participer\r\nL\'opération se déroulera sur le site Interenchères, en deux parties. La première, le matin du 17 mars avec 437 lots de 0,11 à 2 bitcoins. La deuxième, l\'après-midi, avec 44 lots de 5 à 20 bitcoins pour des investisseurs plus avertis, disposant de plus de moyens. \"Comme il s\'agit d\'une première vente judiciaire, il nous a fallu quelques mois pour prendre le temps de bâtir une solution avec le choix de la maison de vente judiciaire Kapandji Morhange et une solution technique fiable pour garantir le transfert de ces bitcoins aux futurs adjudicateurs\", explique Nicolas Bessone.\r\n\r\nUn prix minimal, inférieur à la valeur estimée du bitcoin, sera fixé la veille. Les acquéreurs des bitcoins vendus aux enchères devront s\'acquitter de frais non négligeables, de 14,28% TTC, liés notamment au coût du transfert de la cryptomonnaie sur leur portefeuille numérique.\r\n\r\nPour participer à cette vente, vous devez vous inscrire sur le site interencheres.com avant le 13 mars à minuit, indique Ghislaine Kapandji, co-fondatrice de Kapandji Morhange. Un cahier des charges doit être signé et vous devrez aussi fournir des documents d\'identité. Sans oublier le dépôt d\'une garantie de 1500 euros pour la vente du matin et de 10 000 euros pour celle de l\'après-midi.\r\n\r\nSi l\'opération est une première en France, des ventes aux enchères de bitcoins ont déjà eu lieu aux États-Unis. L\'an dernier, 4 000 unités de la monnaie virtuelle ont été mises en vente après des saisies du FBI, rappelle BFMTV.', 4),
(4, 'Nike n’a pas payé d’impôts ces trois dernières années', 'Anthony HUYNH', 'nike.jpg', '2021-04-07', 'En 2017, Donald Trump donnait un sacré coup de pouce aux sociétés en faisant passer leur taux d’imposition de 35 à 21%. Un pourcentage que Joe Biden, son successeur à la Maison Blanche, a annoncé vouloir rehausser à 28%. Et ce n’est pas une récente enquête du bureau spécialisé en fiscalité ITEP, relayée par le New York Times (NYT), qui risque de faire changer d’avis le président américain. Comme l’a repéré Ulyces, au moins 55 grandes sociétés n’ont ainsi pas payé d’impôts ces trois dernières années aux Etats-Unis, profitant notamment de la réforme fiscale de Trump.\r\n\r\nParmi elles, on peut citer FedEx ou encore Nike. La marque à la virgule, qui n’a fait aucun commentaire officiel à ce sujet, a pourtant réalisé 4,1 milliards de dollars de bénéfices sur la même période. C’est une nouvelle révélation embarrassante pour Nike, alors que les Paradise Papers avaient révélé en 2017 que l’entreprise avait réussi à éviter de payer plusieurs milliards d’euros d\'impôt en Europe grâce à une série de montages aux Pays-Bas… Pour FedEx, ces bénéfices grimpent à 6,9 milliards de dollars sur trois ans.\r\n\r\nSelon le NYT, des dizaines d\'entreprises ont pu réduire davantage leur facture fiscale, la faisant parfois passer à zéro dollar, grâce à une gamme de déductions et d\'exemptions légales qui sont devenues des incontournables du code des impôts. Certaines, comme FedEx, ont également profité de la loi CARES adoptée au début de la pandémie de Covid-19, en mars 2020. Celle-ci comprenait une disposition qui permettait temporairement aux entreprises d\'utiliser les pertes en 2020 pour compenser les bénéfices réalisés les années précédentes, selon cette étude.', 3),
(5, 'Le plus jeune milliardaire au monde n\'a que 18 ans', 'Anthony HUYNH', 'money.jpg', '2021-04-07', 'Comme chaque année, le magazine américain Forbes publie sa liste des personnes les plus riches du monde. En 2021, la vedette de la téléréalité Kylie Jenner a perdu son titre de milliardaire la plus jeune de la planète aux dépens d’une Allemand de 18 ans. Comme l’explique Business Insider Kevin David Lehmann a hérité de la fortune des son père, Guenther Lehmann, soit près de 3,3 milliards de dollars (environ 2,7 milliards d’euros).\r\n\r\nIl possède désormais 50% des parts de Dm-drogerie Markt, une chaîne allemande de drogueries, leader du secteur en Europe avec près de 3.700 magasins. Fondée en 1974, elle emploie plus de 41.000 personnes dans toute l’Allemagne. Selon Forbes, ni Guenther Lehmann ni son fils (925ème personne la plus riche au monde en 2021), très discrets, ne seraient impliqués directement dans l’entreprise. Dm-drogerie Markt n’a fait aucun commentaire sur ces informations, tout comme la famille Lehmann.', 3),
(6, 'Un retour de Nemesis en LEC pour le Summer Split ?', 'Anthony Huynh', 'nemesis.jpeg', '2021-03-19', 'Nemesis, l\'ancien midlaner des Fnatic et ancien partenaire de Rekkles, pourrait faire son grand retour sur le devant de la scène européenne cet été comme nouveau midlaner de l\'équipe LEC de Team Vitality.\r\n\r\nLe mercato de l\'intersaison 2020/02021 s\'était montré très cruel envers certains joueurs de la scène européenne ; Nemesis (ancien Fnatic) a été l\'un des joueurs de la saison 2020 du LEC a ne pas avoir réussi à se trouver une place de titulaire pour la prochaine saison de compétition, et à défaut de ne pouvoir concourir pour le titre de champion d\'Europe, il a choisi de passer une partie de la saison 2021 avec l\'étiquette de streamers, en attendant de se retrouver une équipe pour le prochain split. Le 12 janvier dernier, Gen.G présentait son équipe de \"créateurs de contenu\" pour l\'année 2021, une liste dans laquelle nous retrouvons ambition et CuVee, deux joueurs qui ont défendu les couleurs de la structure en LCK par le passé, mais également deux compétiteurs européens, Nemesis et Crownshot ; entre temps, le botlaner slovène a été recruté par Team Vitality pour prendre la place de Comp.\r\n\r\nLa saison régulière étant maintenant terminée, les équipes qui n\'ont réussi le pari de se qualifier pour les playoffs vont dorénavant se focaliser sur le prochain split et indubitablement sur la composition de leur équipe. Bien évidemment, un mercato ne serait pas un vrai mercato si nous n\'avons pas le droit à notre lot de rumeurs en tout genre, et celle qui a fait son apparition hier soir en vaut certainement le détour. D\'après le compte Twitter LEC Wooloo, l\'ancien midlaner des Fnatic pourrait apparemment faire son grand retour sur le devant de la scène compétitive pour la saison estivale, de nombreuses équipes (nombres indéterminés) de la ligue LEC et LCS seraient intéressées pour recruter l\'ancien partenaire de Rekkles pendant l\'intersaison. Parmi les équipes ayant jeté leur dévolu sur Nemesis, nous retrouvons principalement la formation Team Vitality qui aurait apparemment comme projet de se trouver un autre midlaner pour le Summer Split et d\'envoyer Aljoša \"Milica\" Kovandžić sur le banc de touche.\r\n\r\nLEC Wooloo a également précisé que dans le cas où Team Vitality n\'arrivait pas à recruter Nemesis, elle pourrait se tourner vers un nouveau midlaner évoluant au sein d\'une ligue régionale européenne (ERL- European Regional League). Bien évidemment, il ne s\'agit ici que de rumeurs et il faudra certainement attendre un certain temps avoir d\'avoir ou non confirmation.', 2),
(7, 'KOJIMA PRODUCTIONS : LE PROCHAIN JEU D\'HIDEO EN EXCLU CHEZ MICROSOFT ?', 'Anthony HUYNH', 'kojima-productions.jpg', '2021-04-06', 'Si l\'alliance entre Hideo Kojima et Sony est historique - le premier jeu de son studio, le fameux Death Stranding, étant carrément une exclusivité console PS4 - il se pourrait que le célèbre réalisateur japonais aille voir ailleurs. Pour l\'instant, les jeux ne sont pas encore faits mais selon Jeff Grubb, journaliste de VentureBeat connu pour ses nombreux leaks très souvent avérés, des pourparlers entre Kojima Productions et Microsoft seraient actuellement en cours. Le but pour le constructeur américain ? Probablement aboutir à un accord d\'exclusivité au sujet du prochain jeu du studio (qui serait d\'ailleurs dévoilé prochainement). Pour le moment, Jeff Grub affirme simplement avoir été mis au parfum de cette discussion secrète entre les deux entités : d\'ailleurs, toujours selon lui, la statuette Ludens aperçue dans le bureau de Phil Spencer serait bel et bien un indice tout sauf anodin. \r\n\r\nEn d\'autres termes, rien ne dit qu\'un contrat a déjà été signé et que le prochain soft de Kojima Productions sera une exclusivité Xbox, mais telle serait la volonté de Microsoft. Et s\'il y a une chose dont on peut être sûr, c\'est que la firme de Redmond n\'hésite pas à sortir le chéquier pour parvenir à ses fins. Si tout cela est véridique, il reste à voir ce que peut proposer Sony en contrepartie, la PS5 disposant d\'une renommée mondiale évidente malgré la pénurie...', 5),
(8, 'HÉROÏQUE, LE PSG BRAQUE LE BAYERN MUNICH SUR SES TERRES', 'Anthony HUYNH', 'mbappe.jpg', '2021-04-08', 'Ultra efficace, Paris s’est imposé sur le terrain des champions d\'Europe munichois ce mercredi, en quarts de finale aller de Ligue des champions.\r\n\r\nUne leçon d’efficacité. Dominés pendant toute la rencontre, les Parisiens repartent d’Allemagne avec une victoire héroïque face au Bayern Munich (2-3) ce mercredi, en quarts de finale aller de Ligue des champions. Doublé de Kylian Mbappé et un but de Marquinhos contre des réalisations d’Eric Maxim Choupo Moting et Thomas Müller. Les deux équipes se retrouveront mardi prochain, au Parc des Princes, pour la deuxième manche.\r\n\r\nDominer n’est pas gagner pour Munich\r\nSi la température était glaciale et que la neige est tombée pendant toute la partie, c’était rapidement chaud sur le pré, très chaud, avec un Bayern Munich dominateur et des occasions qui pleuvaient sur le but de Navas. Des occasions, Paris en avait aussi, en contre. Et c\'est ce PSG chirurgical qui ouvrait le score, grâce à Mbappé (0-1, 3e). Les Munichois, qui avaient touché la barre juste avant (2e), poussaient, poussaient et poussaient encore (10e, 19e, 20e, 27e)… sans trouver la faille. Et à force de vendanger, ou de se heurter sur Navas (voir par ailleurs), les champions d’Europe étaient punis. Déjà passeur décisif sur le premier but, Neymar offrait le deuxième à Marquinhos, lequel avait tout le temps d’ajuster Neuer (0-2, 28e). La dernière action du capitaine parisien, blessé (30e). Un coup dur de plus pour le PSG, qui perdait aussi Diallo, remplacé à la pause (46e). Sachant que Verratti, Florenzi, Paredes, Icardi et autre Kurzawa étaient forfaits, ça commençait à faire beaucoup…\r\n\r\nMais le Bayern avait aussi ses soucis en termes de blessures. Et l’histoire de ce match amène à penser que l’absence de Lewandowski a été la plus préjudiciable de toutes. Certes, c’est l’ancien Parisien Choupo-Moting, qui relançait les Bavarois (1-2, 37e). Mais l’attaquant camerounais n’a pas le sens du but de son illustre coéquipier polonais… Il a manqué de réussite sur de nombreuses occasions. Müller trouvait le moyen de tromper l’extraordinaire Navas, de la tête, sur coup franc (2-2, 60e), mais Mbappé en remettait une couche, battant Neuer du droit, petit côté (2-3, 68e). Malgré les bricolages en défense, la pression allemande et encore des occasions à la pelle, à l’image de ce tir d’Alaba qui léchait le montant (86e), le PSG tenait le coup et sa victoire, son exploit, son braquage (2-3 score final). C’est la première défaite depuis novembre 2019 chez eux pour les champions d’Europe, et la huitième victoire de suite en déplacement toutes compétition confondu pour ce PSG imprévisible et béni des dieux.\r\n\r\nNeymar et Mbappé, les stars au rendez-vous\r\n\r\nOn les attendait au tournant, ils ont répondu présent. Alors qu’ils étaient passés à côté de leur sujet le 23 août dernier, à l’occasion de la finale de la Ligue des champions qui opposait les deux équipes à Lisbonne, Neymar et Kylian Mbappé ont guidé le Paris-SG sur le chemin du succès en Bavière. Deux passes décisives pour le premier, deux buts pour le second. Surtout, ils ont fait les efforts, ils ont mis la pression constamment sur l’arrière-garde munichoise et ils ont fait parler leur vitesse, leur technique et leur talent afin de profiter des boulevards qui s’offraient devant eux. Les joueurs du PSG étaient venus pour souffrir, pour jouer le contre face aux hommes de Hansi Flick. Il a fallu de la solidarité et un grand gardien pour réaliser ce coup miraculeux. Et le talent des deux superstars. A noter que Neymar a évité un carton jaune qui l\'aurait privé du match retour.\r\n\r\nNavas remporte le duel des gardiens\r\nManuel Neuer, meilleur gardien du monde ? Peut-être. Mais mercredi soir, c’est Keylor Navas qui était le meilleur portier sur le pré de l’Allianz Arena. Coupable sur l’ouverture du score parisienne, le portier allemand a vu son homologue costaricien multiplier les parades. On pense notamment à celle réalisée en début de rencontre devant Leon Goretzka (19e), l’un des 10 arrêts du triple champion d\'Europe sous les couleurs du Real Madrid, qui n’a peut-être pas l’envergure, la taille ou le jeu au pied de certains, mais sur la ligne, c\'est la classe mondiale. Il fallait au moins cela, sachant que le Bayern Munich a frappé 31 fois au but. D\'ailleurs, pour trouver trace d\'une équipe qui l\'a emporté en C1 en essuyant autant de frappes adverses sans devoir en passer par la prolongation, il faut remonter à 2014, avec un succès 4-1 d\'Arsenal face à Galatasaray.', 1),
(9, 'ROGER FEDERER PRÊT À RELEVER LE DÉFI DE LA TERRE BATTUE', 'Anthony HUYNH', 'Roger-Federer.jpg', '2021-04-08', 'Après la grande rentrée à Doha, Roger Federer devrait renouer avec la compétition à Madrid, début mai. Plus loin, pourrait se profiler Roland-Garros avant les objectifs annoncés: Wimbledon et les JO.\r\n\r\nSur la route de Roland-Garros, le tournoi de Madrid (2-9 mai) sera particulièrement suivi. Le tournoi espagnol a confirmé l’inscription de Roger Federer (39 ans ; 7e joueur mondial, son moins bon classement depuis le 25 février 2019). Après une rentrée satisfaisante à Doha, début mars (élimination en quarts de finale par le Géorgien Nikoloz Basilashvili) suite à treize mois passés loin du circuit (après deux opérations du genou droit), le Suisse avait expliqué avoir besoin de reprendre le chemin de l’entraînement physique («cinq ou six semaines, au moins» plutôt que d’enchaîner les tournois (il a préféré renoncé à Dubaï et Miami).\r\n\r\nLa dernière apparition de la légende suisse sur terre battue date de la demi-finale perdue à Roland-Garros contre Rafael Nadal. En 2019. Il y a près de deux ans… Il avait, ce jour-là, été emporté par le vent soufflant par bourrasques et par la maîtrise de l’Espagnol 6-3, 6-4, 6-2 en 2h25. Une fin de parcours précipitée, un peu sèche après un tournoi dans lequel il avait notamment dominé Stan Wawrinka. Il s’agissait de son grand retour à Roland-Garros après trois ans d’absence. Roger Federer n’avait pas cherché à se cacher derrière les caprices du vent qui avait contrarié les lancers, les trajectoires, il avait résumé: «Je ne pense pas avoir mal joué dans le vent. C\'est juste que c\'est difficile sur la terre battue. C\'est le meilleur joueur sur terre battue, alors je peux l\'accepter. Ce n\'est pas un problème.»\r\n\r\nA Madrid, Roger Federer a gravé son nom au palmarès en 2006 (il fut finaliste en 2007). Le retour sur terre battue de Roger Federer est l’occasion de rappeler qu’il est aussi un brillant joueur sur terre. Son pourcentage de victoires se hisse à 76,1% (83,5% sur dur et 87,4% sur gazon). Il a remporté 11 des ses 103 titres sur terre battue (le dernier datant de 2015 à Istanbul). Et notamment Roland-Garros en 2009 (il compte 4 finales malheureuses lors des Internationaux de France).\r\n\r\nDans une interview au magazine de mode «Numéro Homme», le joueur aux 20 couronnes en Grand Chelem (comme Rafael Nadal) a dernièrement indiqué: «Je ne vais pas revenir pour jouer des seconds tours dans un coin paumé. J’ai l’impression de savoir ce que je dois faire pour y parvenir. Il y a une part de rêve et une part de logique, c’est un rêve logique. Je veux gagner de grands tournois et battre les meilleurs joueurs du monde. Je travaille très fort pour cela, même si je n’en parle pas énormément.»\r\n\r\nInterrogé sur ses plans pour 2021, il avait glissé, plus énigmatique: «Je vais tenter un dernier coup de reins pour voir ce qu’il reste dans le réservoir.» Son passage à Madrid et ses prestations seront particulièrement suivis. Federer de retour sur terre, la saison sur terre battue qui s\'ouvre (Roland-Garros attend encore la confirmation de ses dates) ne pouvait rêver meilleure bande annonce.', 1),
(10, 'L’avenir de Kawhi Leonard déjà scellé ?', 'Anthony HUYNH', 'kawhi-leonard.jpg', '2021-04-07', 'Alors qu’il joue gros pour les playoffs à venir, Kawhi Leonard a-t-il prévu de continuer sur le long terme aux Clippers ? Son destin serait déjà scellé à en croire les dernières rumeurs.\r\n\r\nMaintenant que les playoffs commencent gentiment à arriver, des équipes savent que cette période de la saison s’annonce cruciale pour le futur. Aux Clippers par exemple, c’est l’occasion de prendre une revanche après une immense déception l’an dernier face aux Nuggets.\r\n\r\nKawhi Leonard et Paul George veulent atteindre la finale, avec la ferme intention de remporter leur première bague ensemble. Jouable ? Disons qu’il faudra encore se méfier de Denver, qui possède le meilleur 5 de la ligue actuellement selon les statistiques.\r\n\r\nCette postseason est d’autant plus importante qu’elle arrive à un moment charnière pour les deux stars : elles pourront être sur le marché pour la prochaine free agency, à condition de refuser leur option pour la campagne 2021/22. En cas d’échec lors des playoffs, la possibilité d’un départ existe, mais est-elle sérieuse ? Pas à en croire The Athletic.\r\n\r\nPeu importe l’issue de cette campagne, Kawhi compte s’inscrire dans la durée chez les Clippers, avec l’idée de remporter un titre en Californie. Pas question d’abandonner après deux d’échecs, du moins si cette saison se termine assez mal.\r\n\r\nCela va sans dire, mais il semble certain que The Klaw restera en cas de succès. Mais en dans l’hypothèse où les Clippers perdent à nouveau en playoffs, alors les rumeurs reviendront de plus belle. À en croire Sam Amick, il n’y a pas vraiment de suspense ici.\r\n\r\nKawhi Leonard ailleurs que chez les Clippers en 2022 ? Hautement improbable selon The Athletic. Un scénario attendu pour l’ailier, qui n’est pas du genre à abandonner facilement.', 1);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `id_cat` int(11) NOT NULL,
  `nom_cat` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id_cat`, `nom_cat`) VALUES
(1, 'sport'),
(2, 'esport'),
(3, 'economie'),
(4, 'finance'),
(5, 'games');

-- --------------------------------------------------------

--
-- Structure de la table `grade`
--

CREATE TABLE `grade` (
  `id_g` int(11) NOT NULL,
  `nom_g` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `grade`
--

INSERT INTO `grade` (`id_g`, `nom_g`) VALUES
(1, 'Super Admin'),
(2, 'admin'),
(3, 'user');

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE `message` (
  `id_m` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(10) NOT NULL,
  `email` varchar(200) NOT NULL,
  `msg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `imageprofile` varchar(50) NOT NULL,
  `login` varchar(50) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `statut` int(11) NOT NULL,
  `id_g` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `nom`, `prenom`, `imageprofile`, `login`, `pass`, `email`, `statut`, `id_g`) VALUES
(1, 'admin', 'admin', 'user-placeholder.jpg', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@admin.com', 1, 2),
(2, 'HUYNH', 'Anthony', 'photo_pro.png', 'Yuugen', 'ebc712cacf72743ef7f938735c91fa27', 'anthonyhuynh1204@gmail.com', 1, 1),
(3, 'user1', 'user1', 'user-placeholder.jpg', 'user1', '24c9e15e52afc47c225b757e7bee1f9d', 'user1@user.com', 0, 3),
(4, 'user2', 'user2', 'user-placeholder.jpg', 'user2', '7e58d63b60197ceb55a1c487989a3720', 'user2@user.com', 0, 3);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id_a`),
  ADD KEY `Article_Categorie_FK` (`id_cat`) USING BTREE;

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`id_cat`);

--
-- Index pour la table `grade`
--
ALTER TABLE `grade`
  ADD PRIMARY KEY (`id_g`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `utilisateurs_grade_FK` (`id_g`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `id_a` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `id_cat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `grade`
--
ALTER TABLE `grade`
  MODIFY `id_g` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `Voiture_Categorie_FK` FOREIGN KEY (`id_cat`) REFERENCES `categorie` (`id_cat`);

--
-- Contraintes pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD CONSTRAINT `utilisateurs_grade_FK` FOREIGN KEY (`id_g`) REFERENCES `grade` (`id_g`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
