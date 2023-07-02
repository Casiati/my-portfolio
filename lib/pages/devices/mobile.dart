import 'package:flutter/material.dart';
import 'package:my_portfolio/custons/button.dart';
import 'package:my_portfolio/custons/colors.dart';
import 'package:my_portfolio/custons/bto_bio.dart';
import 'package:my_portfolio/domain/person.dart';

class MobileDesigner extends StatelessWidget {
  MobileDesigner({
    super.key,
  });

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
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomAssetBto(
                        onPressed: () {
                          //TODO: Navegação para o instagram.
                        },
                        iconImg: 'assets/instagram.png',
                      ),
                      CustomAssetBto(
                        onPressed: () {
                          //TODO: Navegação para o linkedin.
                        },
                        iconImg: 'assets/linkedin.png',
                      ),
                      CustomAssetBto(
                        onPressed: () {
                          //TODO: Navegação para o github.
                        },
                        iconImg: 'assets/github.png',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: CustomButton(
                    text: 'CONTACTE ME',
                    icon: Icons.mail_outline,
                    onTap: () {
                      //TODO: Navegação pra email
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
