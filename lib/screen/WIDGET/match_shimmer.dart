import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Widget matchShimmer() {
  return Padding(
    padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10, top: 10),
    child: SizedBox(
        height: 120,
        width: double.infinity,
        child: Container(
          decoration: BoxDecoration(
              border:
                  Border.all(color: const Color.fromARGB(255, 223, 223, 223))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Shimmer.fromColors(
                baseColor: Color.fromARGB(255, 231, 230, 230),
                highlightColor: Color.fromARGB(255, 245, 244, 244),
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                ),
              ),
              Shimmer.fromColors(
                baseColor: const Color.fromARGB(255, 231, 230, 230),
                highlightColor: const Color.fromARGB(255, 245, 244, 244),
                child: Container(
                  height: 20,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                ),
              ),
              Shimmer.fromColors(
                baseColor: const Color.fromARGB(255, 231, 230, 230),
                highlightColor: const Color.fromARGB(255, 245, 244, 244),
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                ),
              ),
              Shimmer.fromColors(
                baseColor: const Color.fromARGB(255, 231, 230, 230),
                highlightColor: const Color.fromARGB(255, 245, 244, 244),
                child: Container(
                  height: 20,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                ),
              ),
              Shimmer.fromColors(
                baseColor: Color.fromARGB(255, 231, 230, 230),
                highlightColor: Color.fromARGB(255, 245, 244, 244),
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        )),
  );
}
