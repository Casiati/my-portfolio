import 'package:flutter/material.dart';

class LanguageView extends StatelessWidget {
  const LanguageView(
      {super.key,
      required this.img,
      required this.text,
      required this.isDesktop, required this.width});

  final String text;
  final String img;
  final bool isDesktop;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        alignment: Alignment.topLeft,
        width: (isDesktop) ? width * 0.3 : width * 0.6,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(img, height: (isDesktop) ? width * 0.014 :25),
            const SizedBox(
              width: 8,
            ),
            Text(
              text,
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: (isDesktop) ? width * 0.01 : 18),
            )
          ],
        ),
      ),
    );
  }
}
