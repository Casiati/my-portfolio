import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:my_portfolio/custons/colors.dart';
import 'package:my_portfolio/domain/page_controller.dart';
import 'package:provider/provider.dart';
import 'pages/homepage.dart';

void main() {
  setUrlStrategy(PathUrlStrategy());
  runApp(
    ChangeNotifierProvider(
      create: (_) => PageProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final CustomColors customColors = CustomColors();
    return MaterialApp(
      title: 'My Portifolio',
      theme: ThemeData(
        scaffoldBackgroundColor: customColors.background,
        textTheme: TextTheme(
          bodyMedium: TextStyle(
              color: customColors.font,
              fontStyle: FontStyle.italic,
              fontSize: 20),
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
