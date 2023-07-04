import 'package:flutter/material.dart';

class EducationView extends StatelessWidget {
  const EducationView(
      {super.key,
      required this.text1,
      required this.text2,
      required this.isDesktop,
      required this.width});

  final String text1;
  final String text2;
  final bool isDesktop;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text1,
            style: TextStyle(
              fontSize: (isDesktop) ? width * 0.01 : 18,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          SizedBox(
            width: (isDesktop) ? width * 0.28 : width * 0.6,
            child: Text(
              text2,
              maxLines: 5,
              overflow: TextOverflow.visible,
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: (isDesktop) ? width * 0.01 : 18),
            ),
          ),
        ],
      ),
    );
  }
}
