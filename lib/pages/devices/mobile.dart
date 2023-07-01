import 'package:flutter/material.dart';
import 'package:my_portfolio/domain/colors.dart';
import 'package:my_portfolio/domain/icons.dart';
import 'package:my_portfolio/domain/person.dart';

class MobileDesigner extends StatelessWidget {
  MobileDesigner({super.key});

  final Person person = Person();
  final CustomColors customColors = CustomColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: Column(
              children: [
                Text('Hi, I\'m ${person.name} 👋'),
                Text(
                  person.description,
                  style: const TextStyle(fontSize: 13),
                ),
                Container(
                  margin: const EdgeInsets.all(8),
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    image: DecorationImage(
                      image: NetworkImage(person.photoUrl),
                    ),
                  ),
                ),
                const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [CustomAssetImg('assets/instagram.png')],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
