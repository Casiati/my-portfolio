import 'package:flutter/material.dart';
import 'package:my_portfolio/custons/button.dart';
import 'package:my_portfolio/custons/colors.dart';
import 'package:my_portfolio/custons/bto_bio.dart';
import 'package:my_portfolio/custons/education_view.dart';
import 'package:my_portfolio/custons/language_view.dart';
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
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
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
                    text: 'CONTACT ME',
                    icon: Icons.mail_outline,
                    onTap: () {
                      //TODO: Navegação pra email
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text('Languages'),
                ),
                const LanguageView(
                  img: 'assets/flag-us.png',
                  text: 'EN - Advanced',
                ),
                const SizedBox(
                  height: 20,
                ),
                const LanguageView(
                  img: 'assets/flag-brazil.png',
                  text: 'PT-BR Native Speaker',
                ),
                const Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Text('Education'),
                ),
                const EducationView(
                    text1: '🎓',
                    text2:
                        'Faculdade São Francisco de Assis - ANÁLISE E DESENVOLVIMENTO DE SISTEMAS')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
