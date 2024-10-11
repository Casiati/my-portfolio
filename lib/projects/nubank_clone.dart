import 'package:flutter/material.dart';
import 'package:my_portfolio/custons/url_lanucher.dart';

class NubankClone extends StatelessWidget {
  const NubankClone({super.key, required this.width});

  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '# Nubank_clone',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(
            height: 5,
          ),
          InkWell(
            onTap: () => UrlLauncher.launchLink(
                "https://github.com/Casiati/nubank_clone"),
            child: Text(
              'Repositorio aqui',
              style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.blue,
                  fontStyle: FontStyle.italic,
                  fontSize: width * 0.013),
            ),
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Text(
                'Desafio de clone usando apenas Flutter que foi passado pelo ',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              InkWell(
                onTap: () =>
                    UrlLauncher.launchLink("https://github.com/DouglasSilvar"),
                child: Text(
                  'Douglas Silva',
                  style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.blue,
                      fontStyle: FontStyle.italic,
                      fontSize: width * 0.013),
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          Text(
            'O aplicativo escolhido por ele foi Nubank.',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 15),
          Text(
            'Atualmente o App conta apenas com a página inicial, não sei se futuramente continue a integração das demais páginas uma que fez que o propósito do desafio já foi atingido, propósito esse que era apenas para estudos.',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 15),
          Text(
            'Att. Adicionado Tema Escuro.',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 16),
          Text(
            'ScreenShots',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  width: width * 0.18,
                  fit: BoxFit.cover,
                  'assets/nubank_clone/img1.png',
                ),
                const SizedBox(width: 15),
                Image.asset(
                  width: width * 0.18,
                  fit: BoxFit.cover,
                  'assets/nubank_clone/img2.png',
                ),
                const SizedBox(width: 15),
                Image.asset(
                  width: width * 0.18,
                  fit: BoxFit.cover,
                  'assets/nubank_clone/img3.png',
                ),
                const SizedBox(width: 15),
                Image.asset(
                  width: width * 0.18,
                  fit: BoxFit.cover,
                  'assets/nubank_clone/img4.png',
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
