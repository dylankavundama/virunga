import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Widget matchShimmer() {
  return Padding(
    padding: const EdgeInsets.only(left: 15, right: 15),
    child: SizedBox(
        height: 200,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Shimmer.fromColors(
              baseColor: Color.fromARGB(255, 231, 230, 230),
              highlightColor: Color.fromARGB(255, 245, 244, 244),
              child: Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
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
