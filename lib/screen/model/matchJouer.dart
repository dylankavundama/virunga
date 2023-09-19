class MatchJouer {
  int id;
  String club1;
  String club2;
  String? score;
  String? img1;
  String? img2;
  String dateMatch;

  MatchJouer(
      {required this.id,
      required this.club1,
      required this.club2,
      this.score,
      this.img1,
      this.img2,
      required this.dateMatch});

  factory MatchJouer.fromJson(Map<String, dynamic> json) =>
      _$MatchJouerFromJson(json);
}

MatchJouer _$MatchJouerFromJson(Map<String, dynamic> json) {
  return MatchJouer(
      id: json['id'] as int,
      club1: json['clubDomicile'] as String,
      club2: json['clubExterieur'] as String,
      score: json['score'] == null ? '-' : json['score'] as String?,
      img1:
          json['logoDomicile'] == null ? null : json['logoDomicile'] as String?,
      img2: json['logoExterieur'] == null
          ? null
          : json['logoExterieur'] as String?,
      dateMatch: json['dateMatch'] as String);
}

// List<MatchJouer> ListMatchJouer = [
//   MatchJouer(
//     1,
//     'Dc Virunga',
//     'As Kabasha',
//     '0-0',
//     'asset/team/logo.jpg',
//     'asset/team/kb.jpg',
//   ),
//   MatchJouer(
//     1,
//     'Dc Virunga',
//     'As Vclub',
//     '0-0',
//     'asset/team/logo.jpg',
//     'asset/team/vt.jpg',
//   ),
//   MatchJouer(
//     1,
//     'Dc Virunga',
//     'DCMP',
//     '4-3',
//     'asset/team/logo.jpg',
//     'asset/team/dc.jpg',
//   ),
//   MatchJouer(
//     1,
//     'Dc Virunga',
//     'Tp Mazembe',
//     '1-1',
//     'asset/team/logo.jpg',
//     'asset/team/tp.jpg',
//   ),
//   MatchJouer(
//     1,
//     'Dc Virunga',
//     'Al Hilal',
//     '3-1',
//     'asset/team/logo.jpg',
//     'asset/team/al.png',
//   ),
//   MatchJouer(
//     1,
//     'Fc Simba',
//     'Dc Virunga',
//     '1-1',
//     'asset/team/sm.png',
//     'asset/team/logo.jpg',
//   )
// ];
