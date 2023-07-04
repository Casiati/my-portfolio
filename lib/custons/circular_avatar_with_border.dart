import 'package:flutter/material.dart';

class CircleAvatarWithBorder extends StatelessWidget {
  const CircleAvatarWithBorder(
      {super.key,
      required this.borderDensity,
      required this.borderColor,
      required this.netImage,
      required this.maxRadius});

  final double borderDensity;
  final Color borderColor;
  final String netImage;
  final double maxRadius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: borderDensity + maxRadius,
      backgroundColor: borderColor,
      child: CircleAvatar(
        backgroundColor: Colors.black,
        backgroundImage: NetworkImage(netImage),
        maxRadius: maxRadius,
      ),
    );
  }
}
