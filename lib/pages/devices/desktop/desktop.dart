import 'package:flutter/material.dart';
import 'package:my_portfolio/custons/horizontal_menu.dart';
import 'package:my_portfolio/domain/person.dart';
import 'package:my_portfolio/pages/devices/desktop/desktop_bio.dart';

class DesktopDesigner extends StatelessWidget {
  DesktopDesigner({super.key, required this.width, required this.pages});

  final Person person = Person();
  final double width;
  final List pages;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Center(
            child: Column(
              children: [
                DesktopBio(
                  width: width,
                ),
                const SizedBox(
                  height: 30,
                ),
                HorizontalMenu(width: width,
                  pages: pages,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
