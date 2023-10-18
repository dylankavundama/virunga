import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  Detail({
    required this.image,
    required this.titre,
    required this.desc,
  });
  final String image;
  final String titre;
  final String desc;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: screenHeight * 0.02),
              Expanded(
                child: Image.asset(
                  image,
                  width: screenWidth,
                  height: screenHeight * 0.4,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                height: screenHeight * 0.02,
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        CircleAvatar(
                          backgroundColor: Colors.black,
                          radius: 15,
                          child: Center(
                            child: Text('#'),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      titre,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 0, top: 4),
                      child: Text(
                        desc,
                        style: TextStyle(fontSize: 16),
                        textAlign: TextAlign.justify,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
