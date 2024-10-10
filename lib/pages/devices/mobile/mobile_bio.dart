import 'package:flutter/material.dart';
import 'package:my_portfolio/custons/asset_bto.dart';
import 'package:my_portfolio/custons/button.dart';
import 'package:my_portfolio/custons/education_view.dart';
import 'package:my_portfolio/custons/language_view.dart';
import 'package:my_portfolio/custons/url_lanucher.dart';
import 'package:my_portfolio/domain/person.dart';

class MobileBio extends StatelessWidget {
  MobileBio({super.key, required this.width, required this.pages});

  final Person person = Person();
  final double width;
  final List pages;

  @override
  Widget build(BuildContext context) {
    return Column(children: [Column(
              children: [
                Text('Hi, I\'m ${person.name} 👋'),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(textAlign: TextAlign.center,
                    person.description,
                    style: const TextStyle(fontSize: 13,color: Colors.grey,),
                  ),
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
                    children: <Widget>[
                      // CustomAssetBto(
                      //   onPressed: () {
                      //     UrlLauncher.launchLink(person.instagramLink);
                      //   },
                      //   iconImg: 'assets/instagram.png',
                      // ),
                      CustomAssetBto(
                        onPressed: () {
                          UrlLauncher.launchLink(person.linkedinLink);
                        },
                        iconImg: 'assets/linkedin.png',
                      ),
                      CustomAssetBto(
                        onPressed: () {
                          UrlLauncher.launchLink(person.gitHubLink);
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
                      UrlLauncher.launchLink('mailto:${person.mail}');
                    },
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text('Languages'),
                ),
                LanguageView(
                  width: width,
                  isDesktop: false,
                  img: 'assets/flag-us.png',
                  text: 'EN - Advanced',
                ),
                const SizedBox(
                  height: 20,
                ),
                LanguageView(
                  width: width,
                  isDesktop: false,
                  img: 'assets/flag-brazil.png',
                  text: 'PT-BR Native Speaker',
                ),
                const Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Text('Education'),
                ),
                EducationView(
                  width: width,
                  isDesktop: false,
                  text1: '🎓',
                  text2:
                      'Faculdade São Francisco de Assis - ANÁLISE E DESENVOLVIMENTO DE SISTEMAS',
                ),
              ],
            ),],);
  }
}