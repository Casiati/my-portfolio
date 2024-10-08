import 'package:flutter/material.dart';
import 'package:my_portfolio/custons/asset_bto.dart';
import 'package:my_portfolio/custons/button.dart';
import 'package:my_portfolio/custons/circular_avatar_with_border.dart';
import 'package:my_portfolio/custons/colors.dart';
import 'package:my_portfolio/custons/education_view.dart';
import 'package:my_portfolio/custons/language_view.dart';
import 'package:my_portfolio/custons/url_lanucher.dart';
import 'package:my_portfolio/domain/person.dart';

class DesktopBio extends StatelessWidget {
  DesktopBio({super.key, required this.width});

  final double width;
  final Person person = Person();
  final CustomColors customColors = CustomColors();

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatarWithBorder(
              borderDensity: 2,
              borderColor: Colors.white,
              maxRadius: width * 0.08,
              netImage: person.photoUrl,
            ),
            const SizedBox(
              width: 20,
            ),
            Padding(
              padding: EdgeInsets.only(top: width * 0.01),
              child: Column(
                children: [
                  Text(
                    'Hi, I\'m ${person.name} 👋',
                    style: TextStyle(fontSize: width * 0.018),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(width: width * 0.2, 
                      child: Text(textAlign: TextAlign.center,
                        person.description, overflow: TextOverflow.visible,
                        style: TextStyle(
                          fontSize: width * 0.01,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: width * 0.008,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        // CustomAssetBto(
                        //   width: width,
                        //   onPressed: () {
                        //     UrlLauncher.launchLink(person.instagramLink);
                        //   },
                        //   iconImg: 'assets/instagram.png',
                        // ),
                        CustomAssetBto(
                          width: width,
                          onPressed: () {
                            UrlLauncher.launchLink(person.linkedinLink);
                          },
                          iconImg: 'assets/linkedin.png',
                        ),
                        CustomAssetBto(
                          width: width,
                          onPressed: () {
                            UrlLauncher.launchLink(person.gitHubLink);
                          },
                          iconImg: 'assets/github.png',
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: width * 0.008,
                    ),
                    child: CustomButton(
                      width: width,
                      text: 'CONTACT ME',
                      icon: Icons.mail_outline,
                      onTap: () {
                        UrlLauncher.launchLink('mailto:${person.mail}');
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: width * 0.15,
            ),
            Padding(
              padding: EdgeInsets.only(top: width * 0.01),
              child: Column(
                children: [
                  Container(
                    width: width * 0.3,
                    alignment: Alignment.bottomLeft,
                    child: Text('Languages',
                        style: TextStyle(fontSize: width * 0.014)),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  LanguageView(
                    width: width,
                    isDesktop: true,
                    img: 'assets/flag-us.png',
                    text: 'EN - Advanced',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  LanguageView(
                    width: width,
                    isDesktop: true,
                    img: 'assets/flag-brazil.png',
                    text: 'PT-BR Native Speaker',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: width * 0.3,
                    alignment: Alignment.bottomLeft,
                    child: Text('Education',
                        style: TextStyle(fontSize: width * 0.014)),
                  ),
                  EducationView(
                    width: width,
                    isDesktop: true,
                    text1: '🎓',
                    text2:
                        'Faculdade São Francisco de Assis - ANÁLISE E DESENVOLVIMENTO DE SISTEMAS',
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
