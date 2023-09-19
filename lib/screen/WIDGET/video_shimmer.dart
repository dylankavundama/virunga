import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Widget videoShimmer() {
  return Padding(
    padding: const EdgeInsets.only(left: 20, right: 20),
    child: SizedBox(
        height: 300,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Shimmer.fromColors(
              baseColor: Color.fromARGB(255, 231, 230, 230),
              highlightColor: Color.fromARGB(255, 245, 244, 244),
              child: Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Shimmer.fromColors(
                  baseColor: Color.fromARGB(255, 195, 194, 194),
                  highlightColor: Color.fromARGB(255, 219, 218, 218),
                  child: Container(
                    height: 20,
                    width: 10,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Shimmer.fromColors(
              baseColor: const Color.fromARGB(255, 231, 230, 230),
              highlightColor: const Color.fromARGB(255, 245, 244, 244),
              child: Container(
                height: 20,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
              ),
            )
          ],
        )),
  );
}
