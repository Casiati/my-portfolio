import 'package:flutter/material.dart';
import 'package:my_portfolio/custons/colors.dart';
import 'package:my_portfolio/domain/person.dart';
import 'package:my_portfolio/pages/devices/mobile/mobile_bio.dart';

class MobileDesigner extends StatelessWidget {
  MobileDesigner({
    super.key,
    required this.width, required this.pages,
  });

  final Person person = Person();
  final CustomColors customColors = CustomColors();
  final double width;
  final List pages;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          child: Center(
            child: Column(
              children: [MobileBio(width: width, pages: pages)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
