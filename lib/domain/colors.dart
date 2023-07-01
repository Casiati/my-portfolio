import 'package:flutter/material.dart';

class CustomColors {
  Color background = const Color(0xFF2C2C2C);
  Color border = const Color.fromARGB(30, 255, 255, 255);
  Color font = const Color(0xFFFFFFFF);
}

class CustomGradient extends StatelessWidget {
  const CustomGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          colors: [
            Color(0xFFf47777),
            Color(0xFF777cf4),
          ],
        ),
      ),
    );
  }
}
