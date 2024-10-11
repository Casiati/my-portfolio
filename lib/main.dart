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
    MediaQueryData deviceInfo = MediaQuery.of(context);
    final double width = deviceInfo.size.width;
    return MaterialApp(
      title: 'My Portifolio',
      theme: ThemeData(
        scaffoldBackgroundColor: customColors.background,
        textTheme: TextTheme(
          displayLarge: TextStyle(
              fontSize: width * 0.020,
              fontWeight: FontWeight.bold,
              color: Colors.white), // h1
          displayMedium: TextStyle(
              fontSize: width * 0.017,
              fontWeight: FontWeight.bold,
              color: Colors.white), // h2
          bodyLarge: TextStyle(
              fontSize: width * 0.015, color: Colors.white), // body text
          bodyMedium: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.italic,
              fontSize: width * 0.013),
          bodySmall: TextStyle(
              color: Colors.grey,
              fontStyle: FontStyle.italic,
              fontSize: width * 0.011),
        ),
        useMaterial3: true,
      ),
      home: HomePage(
        deviceInfo: deviceInfo,
      ),
    );
  }
}
