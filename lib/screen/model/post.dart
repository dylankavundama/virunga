class Post {
  int id;
  String? image;

  String? titre;
  String? description;

  Post({required this.id, this.image, this.titre, this.description});

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}

Post _$PostFromJson(Map<String, dynamic> json) {
  return Post(
      id: json['id'] as int,
      image: json['image'] as String?,
      titre: json['titre'] == null ? null : json['titre'] as String?,
      description:
          json['description'] == null ? null : json['description'] as String?);
}

// List<Post> posts = [
//   Post(
//       5,
//       'asset/post/b.jpg',
//       "Mercato 𝐆𝐎𝐃𝐖𝐈𝐍_𝐀𝐙𝐀𝐍𝐘𝐈𝐓𝐀𝐆𝐀_𝐀𝐑𝐑𝐈𝐕𝐄 ",
//       "L'international Ghanéen 🇬🇭 arrive, Déjà à l’aéroport en direction de Kigali ( Rwanda 🇷🇼 ) pour Goma, GODWIN est le premier recrut à l’international avant l’arrivé de deux européens la semaine qui se pointe à l’horizon"),
//   Post(
//       5,
//       'asset/post/f.jpg',
//       "𝐐𝐔𝐄𝐋𝐐𝐔𝐄 𝐂𝐇𝐎𝐒𝐄 𝐒𝐄 𝐏𝐑𝐄E𝐏𝐀𝐑𝐄 ???",
//       "Le comité de DC VIRUNGA avec le célèbre journaliste congolais CHARLES MBUYA de CANAL+"),
//   Post(
//     5,
//     'asset/post/d.jpg',
//     "𝐏𝐫𝐞e-𝐬𝐚𝐢𝐬𝐨𝐧 : 𝐃𝐂 𝐕𝐈𝐑𝐔𝐍𝐆𝐀 0-1 𝐀𝐒 𝐌𝐭 𝐑𝐔𝐖𝐄𝐍𝐙𝐎𝐑𝐈 ",
//     "Malgré une domination remarquable, une frappe au poteau de Daniel BOFANDO, 4 occasions en or loupé de Thithy MAMBUMA, DOTAL ... le Dc virunga s'incline a la première sortie en amical , Nos pensées vers notre mediateur 𝐅𝐈𝐃𝐄𝐋 blessé aujourd'hui a peine 4 minutes de jeu! il sera mis au repos pendant un temps car il connu une blessure grave \n  le Dc virunga continue avec la préparation le lundi ! et bientôt un notre match test .. Merci a tout nos supporters présent au stade et surtout au geste d'applaudir l'équipe après match malgré la défaite !!! c'était classe et le groupe va s'améliorer",
//   ),
//   Post(
//       5,
//       'asset/post/h.jpg',
//       "Notre Club Dc Virunga vient de procéder officiellement devant notre public au lancement des séances d’entraînement pour la saison 2022-2023.",
//       "L’occasion m’a permis , comme #President Sportif , de présenter notre nouveau comité que je dirige désormais.Objectif : #Ligue 1"),
//   Post(
//       5,
//       'asset/post/e.jpg',
//       "𝐏𝐨𝐮𝐫𝐬𝐮𝐢𝐭𝐞 𝐝𝐞 𝐥𝐚 𝐏𝐫𝐞-𝐬𝐚𝐢𝐬𝐨𝐧",
//       " L'équipe s'entraîne très bien ! bientôt 1 mois avant d‘ouvrir la porte aux matchs amicaux "),
//   Post(
//     5,
//     'asset/post/a.jpg',
//     "PRE- SAISON: Le Dc Virunga enchaîne",
//     "  ",
//   ),
//   Post(
//       5,
//       'asset/post/g.jpg',
//       "𝐀𝐒𝐒𝐄𝐌𝐁𝐋𝐄́𝐄 𝐆𝐄́𝐍𝐄́𝐑𝐀𝐋𝐄 : Dc virunga le dimanche 16 juillet 2023 le Dc virunga a tenue son assemblée pour évaluer la saison 2022-2023 et préparer la saison 2023-2024",
//       "𝐏𝐨𝐮𝐫 𝐥𝐚 𝐬𝐚𝐢𝐬𝐨𝐧 2022-2023, • 248 960 Dollars fut dépensés la saison dernière • 47 joueurs ( 16 permanent 31 acquis par signatures ) 10 prêtés et 2 transférés • Salaires des joueurs, permanence, bureau, partenariat ( PREMIDIS, SHIVOO, ... etc ) signatures des joueurs, matériels, location du stade de l’unité pour toute la saison pour nos entraînements, soin de santé, voiture du staff technique, médias ( 2 caméras etc ) imprimante 🖨, 5 vareuses, don aux joueurs ( nourriture etc qui ne sont pas dans les salaires des joueurs • un terrain de 2 hectares/90 à mugunga pour le DC VIRUNGA • 2 bus ont servi notre équipe également celui de la Fondation de notre président l’honorable PM ( PATRICK MUNYOMO ) • Changement du staff Miterand SENZELE par le staff TODET FARINI maintenu pour cette saison également avec un nouveau préparateur physique en provenance de Tunisie 🇹🇳 ( Mohamed Akrem ) Nous avons terminé la saison dans l’ambiance et l’amour et nous comptons démarré la nouvelle saison le jeudi 20 juillet 2023 ( demain au stade de l’unité )𝐏𝐨𝐮𝐫 𝐥𝐚 𝐬𝐚𝐢𝐬𝐨𝐧 2023-2024 Plus de 230 000 ndollars americain sont déjà estimé avec plusieurs projets d'avenir et des objectifs a atteindre • la montée en ligue 1 et la phase finale de la coupe du congo• Signatures des nouveaux joueurs ( permanent ... ) • contrat officiel d'équipementier français MACRO gagner par l'ambassadeur Youssouph MULUMBU • permanence et bureau propre de l'équipe • Construction de notre terrain a mugunga par un ingénieur français ( avec des homes pouvant servir a notre équipe en cas des stages, internements ... ) Construction d‘un terrain de basketball prêt du stade de football a mugunga • Créée une équipe féminin et des équipes d'âges ( exigé par la FIFA et CAF ) • doter a l'équipe un nouveau bus • avoir une boutique de vente des produits de notre équipe • dotet au secrétariat de l'équipe un véhicule   et autres choses comme préparer l'anniversaire de 60 ans d'existence de notre équipe cette année NB : jusqu'à preve du contraire, le DC VIRUNGA reste le seul ou alors l‘un des rares club du Nord-kivu ou les employés de l'équipe reçoivent leurs salaires chaque fin du mois ( la passion, l'amour de l'équipe et du travail, avec un salaire assurer )  Merci a notre comité diriger par celui que nous appelons l‘homme de la renta l'honorable Patrick MUNYOMO dit PM en rappelant que le comité reste le même pour 2 autres années ( élu par les supporters )Nos remerciements adresser également a notre père Musanganya LUBONGERA et toutes ses personnes qui ont contribuez au développement et l'avancement de notre chère équipe            Fini les vacances, place au travail demain au stade de l'unité : VENEZ NOMBREUX chers supporters  un mot a notre comité : 𝐃𝐂 𝐕𝐈𝐑𝐔𝐍𝐆𝐀 𝐔𝐍𝐈 𝐞𝐭 𝐈𝐌𝐁𝐀𝐓𝐓𝐀𝐁𝐋𝐄)"),
//   Post(
//     5,
//     'asset/post/c.jpg',
//     "Quelques images de la séance d'entraînement de ce vendredi 04 Août 2023 au stade de Buhimba",
//     "Quelques images de la séance d'entraînement de ce vendredi 04 Août 2023 au stade de Buhimba\n On reprend les entraînements le lundi 07 Août à 9h 30 au stade de l'unité de Goma",
//   ),
// ];
