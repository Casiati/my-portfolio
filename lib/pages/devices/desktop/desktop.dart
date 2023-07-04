import 'package:flutter/material.dart';
import 'package:my_portfolio/custons/colors.dart';
import 'package:my_portfolio/domain/person.dart';
import 'package:my_portfolio/pages/devices/desktop/desktop_bio.dart';

class DesktopDesigner extends StatelessWidget {
  DesktopDesigner({super.key, required this.width});

  final Person person = Person();
  final CustomColors customColors = CustomColors();
  final double width;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Center(
            child: Column(
              children: [DesktopBio(width: width,)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
