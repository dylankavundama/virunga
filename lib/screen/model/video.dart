class Video {
  final int id;
  final String video;
  final String img;
  final String titre;

  Video({
    required this.id,
    required this.video,
    required this.img,
    required this.titre,
  });

  factory Video.fromJson(Map<String, dynamic> json) => _$VideoFromJson(json);
}

Video _$VideoFromJson(Map<String, dynamic> json) {
  return Video(
      id: json['id'] as int,
      img: json['img'] as String,
      titre: json['titre'] as String,
      video: json['video'] as String);
}

// List<Video> videoList = [
//   Video(
//       video: 'https://youtu.be/nGV9tG1rjjI?si=7p_VMmEbPMsJ9mHh',
//       img: 'asset/vd/c.jpg',
//       titre: "AS KABASHA Vs DC VIRUNGA (1-1)"),
//   Video(
//       video: 'https://youtu.be/X6cIqPLpoXs?si=75EAdR8Q349kDpT2',
//       img: 'asset/vd/a.png',
//       titre: 'Hymne de Dc virunga'),
//   Video(
//       video: 'https://youtu.be/yNUB_1yKk2c?si=koc79hbOattdoL0z',
//       img: 'asset/vd/aa.jpg',
//       titre:
//           "Présentation du nouveau comité du DC Virunga,Hon Patrick Munyomo"),
//   Video(
//       video: 'https://youtu.be/5Q20_fBCZSo?si=fn0chtevwIBUi4TE',
//       img: 'asset/vd/e.jpg',
//       titre: "Reportage DC Virunga"),
//   Video(
//       video: 'https://youtu.be/T9OqPW1X1S4?si=t2jjOEVISNKX4DEa',
//       img: 'asset/vd/d.jpg',
//       titre: "Résumé : OC Bukavu-Dawa 1-0 DC Virunga"),
//   Video(
//       video: 'https://youtu.be/gbLNW3Dhd6Q?si=NnNbdQt5LwALVPys',
//       img: 'asset/vd/b.jpg',
//       titre: "Youssouf Mulumbu nouvel ambassadeur de DC Virunga"),
//   Video(
//       video: 'https://youtu.be/R2uXMNHqdXA?si=Y-mV2EqT-If1n8ac',
//       img: 'asset/vd/logo.webp',
//       titre: "LE DC VIRUNGA ET L'US BANKIN SE NEUTRALISENT"),
//   Video(
//       video: 'https://youtu.be/olC1xYukyPQ?si=9OXaTud7IjPs6-RT',
//       img: 'asset/vd/logo.webp',
//       titre: "Match amical, AS Mont Ruwenzori vs DC Virunga "),
//   Video(
//       video: 'https://youtu.be/X6cIqPLpoXs?si=75EAdR8Q349kDpT2',
//       img: 'asset/vd/a.jpg',
//       titre:
//           "Président du DC Virunga Patrick MUNYOMO prêt pour redorer l'image de la team."),
// ];
