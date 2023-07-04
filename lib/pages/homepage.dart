import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/devices/desktop/desktop.dart';
import 'package:my_portfolio/pages/devices/mobile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);

    return (deviceInfo.orientation.toString() == 'Orientation.landscape')
        ? DesktopDesigner(width: deviceInfo.size.width)
        : MobileDesigner(width: deviceInfo.size.width);
  }
}
