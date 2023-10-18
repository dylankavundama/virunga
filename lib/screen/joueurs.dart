import 'package:flutter/material.dart';

class Joueurs extends StatefulWidget {
  const Joueurs({Key? key}) : super(key: key);
  @override
  State<Joueurs> createState() => _JoueursState();
}

class _JoueursState extends State<Joueurs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Image.asset('asset/ekp.jpg')),
          const ListJoueurs(
            photo:
                'https://fichiers.tpmazembe.com/images/football/joueurs/74d828edb70b207ff25577c3e4fdd04daea51a64_1670179080_1670620624_1671370446_1677428025_1677428077_1678628424_1680436370.jpg',
            nom: 'BAGGIO SIADI',
            poste: 'Gardien',
            nat: 'Congolaise RD',
          ),
          const ListJoueurs(
            photo:
                'https://fichiers.tpmazembe.com/images/football/joueurs/58844839ae70b47f65cd105ceb0d2c5b7964246b_1670179117_1671370398.jpg',
            nom: 'SULEMAN SHAIBU',
            poste: 'Gardien',
            nat: 'Nigériane',
          ),
          const ListJoueurs(
            photo:
                'https://fichiers.tpmazembe.com/images/football/joueurs/a4b6f12893b533b98f057a7eb5b641eb0aa61ef7_1670171909_1671369005_1678626412_1680435456_1680450829.jpg',
            nom: 'YOUSSIFOU ATTE',
            poste: 'Défenseur',
            nat: 'Togo',
          ),
          const ListJoueurs(
            photo:
                'https://fichiers.tpmazembe.com/images/football/joueurs/0fbbdfe5f3d209678c6d9eb34075fda727646c98_1670172116_1670619334_1670619509_1671369449_1676406562_1677179022_1677427498_1678626851_1680435825_1680451473_1680451519.jpg',
            nom: 'DJOS ISSAMA',
            poste: 'Défenseur',
            nat: 'Congolaise RD',
          ),
          const ListJoueurs(
            photo:
                'https://fichiers.tpmazembe.com/images/football/joueurs/3fe546d5430b6c23f37f765e087c753e37748d4b_1670177377_1670618865_1670619124_1671369381_1677427457.jpg',
            nom: 'CHONGO KABASO',
            poste: 'Défenseur',
            nat: 'Zambienne',
          ),
          const ListJoueurs(
            photo:
                'https://fichiers.tpmazembe.com/images/football/joueurs/a522b345f364102a9f52cbcb122ee0a8c24594cb_1670172006_1670617523_1671368968_1676405519_1677178560_1677427366_1678626379_1680435431.jpg',
            nom: 'JOHNSON ATIBU',
            poste: 'Défenseur',
            nat: 'Congolaise RD',
          ),
          const ListJoueurs(
            photo:
                'https://fichiers.tpmazembe.com/images/football/joueurs/9f48e1864c7e7e384d7dad0dd2c494f7a54b6bc1_1670200644_1670620094_1671369870_1676407553_1677179673_1678627215_1680436047_1680451648.jpg',
            nom: ' ERNEST LUZOLO',
            poste: 'Défenseur',
            nat: 'Congolaise RD',
          ),
          const ListJoueurs(
            photo:
                'https://fichiers.tpmazembe.com/images/football/joueurs/376bd12adee298cfd933754da25c3b27bbb869cc_1670178425_1670619944_1671369668_1676407321_1677179458_1677427629_1678627099_1680435977_1680451571.jpg',
            nom: 'CHRISTIAN KOFFI',
            poste: 'Milieu',
            nat: 'Ivoirienne',
          ),
          const ListJoueurs(
            photo:
                'https://fichiers.tpmazembe.com/images/football/joueurs/bccb0684de9b07725c34287fd63345bd1dc6b52c_1670178461.jpg',
            nom: 'BOAZ NGALAMULUME',
            poste: 'Milieu',
            nat: 'Congolaise RD',
          ),
          ListJoueurs(
            photo:
                'https://fichiers.tpmazembe.com/images/football/joueurs/46598b02c7d6213f010715cafac8803367a269e8_1670200559_1670620983_1671370585_1677428120_1678628692.jpg',
            nom: 'SOZE ZEMANGA',
            poste: 'Milieu',
            nat: 'Congolaise RD',
          ),
          ListJoueurs(
            photo:
                'https://fichiers.tpmazembe.com/images/football/joueurs/f5fb5afb8996bffc629ea3e7e380074539de6cba_1670200675_1670620217_1670620390_1671370139_1676408199_1677179792_1677427858_1680451788.jpg',
            nom: 'SERGE MUKOKO',
            poste: 'Milieu',
            nat: 'Congolaise RD',
          ),
          ListJoueurs(
            photo:
                'https://fichiers.tpmazembe.com/images/football/joueurs/2c846d671483bb05a9ab276ab5e5377ce56befd3_1670202242_1682842084.jpg',
            nom: 'ZAO MATUTALA',
            poste: 'Milieu',
            nat: 'Congolaise RD',
          ),
          ListJoueurs(
            photo:
                'https://fichiers.tpmazembe.com/images/football/joueurs/b6dc1c9cf903937efd2919694e6354dd63c40c5e_1670172197_1670619607_1670619782_1671369593_1676407196_1677179237_1677427589_1678626987_1680435896.jpg',
            nom: 'PHILIPPE KINZUMBI',
            poste: 'Attaquant',
            nat: 'Congolaise RD',
          ),
          ListJoueurs(
            photo:
                'https://fichiers.tpmazembe.com/images/football/joueurs/48920900b6d1e736ff02862e9d6746c51ea46b99_1670172489.jpg',
            nom: 'WILFRID NKAYA',
            poste: 'Attaquant',
            nat: 'Congolaise Brazza',
          ),
          ListJoueurs(
            photo:
                'https://fichiers.tpmazembe.com/images/football/joueurs/815b49dd1d076ee3e949e25308e803628c8f3b36_1670176945_1670618571_1670618747_1671369211_1671369282_1676407991_1677178806_1677178894_1677427403_1678626688_1680435512_1680451314.jpg',
            nom: 'ADDAM BOSSU',
            poste: 'Attaquant',
            nat: 'Congolaise RD',
          ),
          ListJoueurs(
            photo:
                'https://fichiers.tpmazembe.com/images/football/joueurs/4d3cd746e398ba3c87c5abb68c8dad208be33d42_1670200611_1680451745.jpg',
            nom: 'GLOIRE MUJAYA',
            poste: 'Attaquant',
            nat: 'Congolaise RD',
          ),
          ListJoueurs(
            photo:
                'https://fichiers.tpmazembe.com/images/football/joueurs/1a0df75cacf968c500a03e8dd3ab099408f1ccde_1670200581_1670620147_1671161419_1671161439.jpg',
            nom: 'ETIENNE MAYOMBO',
            poste: 'Attaquant',
            nat: 'Congolaise RD',
          ),
          ListJoueurs(
            photo:
                'https://fichiers.tpmazembe.com/images/football/joueurs/3470248d3bfa44c030f751a3a586eb0134584843_1646878128.jpg',
            nom: 'KELVIN BILEKO',
            poste: 'Attaquant',
            nat: 'Congolaise RD',
          ),
          ListJoueurs(
            photo:
                'https://fichiers.tpmazembe.com/images/football/joueurs/e7003e882b4507013b0ee415f8ffe2751a506825_1646878057.jpg',
            nom: 'ROBERT WILANGI',
            poste: 'Attaquant',
            nat: 'Congolaise RD',
          ),
        ],
      ),
    );
  }
}

class ListJoueurs extends StatelessWidget {
  const ListJoueurs({
    required this.photo,
    required this.nom,
    required this.poste,
    required this.nat,
    Key? key,
  }) : super(key: key);
  final String photo;
  final String nom;
  final String poste;
  final String nat;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            ListTile(
              onTap: () => print('Tapped ListTileObject TheMoon'),
              leading: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(photo),
              ),
              title: Text(nom),
              subtitle: Text(poste),
              trailing: Text(
                nat,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
