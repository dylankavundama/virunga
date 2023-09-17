import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Widget postShimmer() {
  return SizedBox(
    height: 70,
    width: double.infinity,
    child: Row(
      children: [
        Shimmer.fromColors(
          baseColor: const Color.fromARGB(255, 231, 230, 230),
          highlightColor: const Color.fromARGB(255, 245, 244, 244),
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(100)),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Shimmer.fromColors(
              baseColor: Color.fromARGB(255, 231, 230, 230),
              highlightColor: Color.fromARGB(255, 245, 244, 244),
              child: Container(
                height: 15,
                width: 200,
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
                height: 12,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
              ),
            )
          ],
        )
      ],
    ),
  );
}
