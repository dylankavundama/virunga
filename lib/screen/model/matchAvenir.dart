class MatchAvenir {
  int id;
  String club1;
  String club2;
  String date;
  String img1;
  String img2;

  MatchAvenir(this.id, this.club1, this.club2, this.date, this.img1, this.img2);
}

List<MatchAvenir> ListMatchAvenir = [
  MatchAvenir(
    1,
    'Al Hilal',
         'Dc Virunga',
    '01/09/2023',
    'asset/team/al.png',
    'asset/team/logo.jpg',
  ),
  MatchAvenir(
    1,
    'Dc Virunga',
       'Tp mazembe',
    '06/09/2023',
        'asset/team/logo.jpg',
    'asset/team/tp.jpg',

  ),
  MatchAvenir(
    1,
         'Dc Virunga',
    'Fc Simba',
    '08/10/2023',
    'asset/team/logo.jpg',
    'asset/team/sm.png',
  ),
  MatchAvenir(
    1,
         'Dc Virunga',
    'Al Hilal',
    '11/11/2023',
    'asset/team/logo.jpg',
    'asset/team/al.png',
  ),
];
