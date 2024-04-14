import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class Skeleton extends StatelessWidget {
  const Skeleton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // const Bone(height: 30, width: 120, radius: 8),
          // const SizedBox(height: 20),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                4,
                (index) => const Padding(
                  padding: EdgeInsets.only(right: 15.0),
                  child: Column(
                    children: [
                      Bone(height: 80, width: 80, radius: 40),
                      SizedBox(height: 6),
                      Bone(height: 15, width: 66, radius: 6),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          const Row(
            children: [
              Bone(height: 32, width: 32, radius: 16),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Bone(height: 10, width: 100, radius: 4),
                  SizedBox(height: 4),
                  Bone(height: 8, width: 70, radius: 3),
                ],
              ),
            ],
          ),
          const SizedBox(height: 15),
          Bone(
              height: MediaQuery.of(context).size.width,
              width: MediaQuery.of(context).size.width,
              radius: 10),
          const SizedBox(height: 10),
          const Bone(height: 35, width: 150, radius: 6),
          const SizedBox(height: 10),
          const Bone(height: 15, width: 80, radius: 4),
          const SizedBox(height: 6),
          const Bone(height: 15, width: 200, radius: 4),
          const SizedBox(height: 10),
          const Bone(height: 10, width: 120, radius: 2),
        ],
      ),
    );
  }
}

class Bone extends StatelessWidget {
  final double height, width, radius;

  const Bone({
    super.key,
    required this.height,
    required this.width,
    required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}
