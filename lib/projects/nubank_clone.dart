import 'package:flutter/material.dart';

class NubankClone extends StatelessWidget {
   const NubankClone({super.key, required this.width});

  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nubank_clone',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(height: 8),
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.bodyLarge,
                children: const [
                  TextSpan(
                      text:
                          'Desafio de clone usando apenas Flutter que foi passado pelo '),
                  TextSpan(
                    text: 'Douglas Silva',
                    style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'O aplicativo escolhido por ele foi Nubank.',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            const SizedBox(height: 8),
            Text(
              'Atualmente o App conta apenas com a página inicial, não sei se futuramente continue a integração das demais páginas uma que fez que o propósito do desafio já foi atingido, propósito esse que era apenas para estudos.',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 8),
            Text(
              'Att. Adicionado Tema Escuro.',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: 16),
            Text(
              'ScreenShots',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const SizedBox(height: 16),
            SingleChildScrollView(scrollDirection: Axis.horizontal,
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(width: width * 0.23,
                    fit: BoxFit.cover,
                    'assets/nubank_clone/img1.png',
                  ),
                  const SizedBox(width: 8),
                  Image.asset(width: width * 0.23,
                    fit: BoxFit.cover,
                    'assets/nubank_clone/img2.png',
                  ),
                  const SizedBox(width: 8),
                  Image.asset(width: width * 0.23,
                    fit: BoxFit.cover,
                    'assets/nubank_clone/img3.png',
                  ),
                  const SizedBox(width: 8),
                  Image.asset(width: width * 0.23,
                    fit: BoxFit.cover,
                    'assets/nubank_clone/img4.png',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
