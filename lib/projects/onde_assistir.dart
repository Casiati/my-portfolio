import 'package:flutter/material.dart';
import 'package:my_portfolio/custons/url_lanucher.dart';

class OndeAssistir extends StatelessWidget {
  const OndeAssistir({Key? key, required this.width}) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '# onde_assistir',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(
            height: 5,
          ),
          InkWell(
            onTap: () => UrlLauncher.launchLink(
                "https://github.com/Casiati/onde_assistir"),
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
          const SizedBox(height: 16),
          Text(
            'Projeto criado no intuito de praticar o uso de API Rest',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Text(
                '- Nesse projeto estou fazendo o uso da API do ',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              InkWell(
                onTap: () =>
                    UrlLauncher.launchLink("https://www.themoviedb.org/"),
                child: Text(
                  '[TMDB]',
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
          const SizedBox(height: 24),
          Text(
            '# ScreenShots',
            style: Theme.of(context).textTheme.displayMedium,
          ),
          const SizedBox(height: 16),
          Text(
            'Listas',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/onde_assistir/img1.png',
                width: width * 0.18,
                fit: BoxFit.cover,
              ),
              const SizedBox(width: 8),
              Image.asset(
                'assets/onde_assistir/img2.png',
                width: width * 0.18,
                fit: BoxFit.cover,
              ),
            ],
          ),
          const SizedBox(height: 24),
          Text(
            'Detalhes',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/onde_assistir/img3.png',
                width: width * 0.18,
                fit: BoxFit.cover,
              ),
              const SizedBox(width: 8),
              Image.asset(
                'assets/onde_assistir/img4.png',
                width: width * 0.18,
                fit: BoxFit.cover,
              ),
              const SizedBox(width: 8),
              Image.asset(
                'assets/onde_assistir/img5.png',
                width: width * 0.18,
                fit: BoxFit.cover,
              ),
            ],
          ),
          const SizedBox(height: 24),
          Text(
            'Sinopse',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 16),
          Image.asset(
            'assets/onde_assistir/img6.png',
            width: width * 0.18,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 24),
          Text(
            'Pesquisar',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 16),
          Image.asset(
            'assets/onde_assistir/img7.png',
            width: width * 0.18,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
