import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/devices/desktop/desktop.dart';
import 'package:my_portfolio/pages/devices/mobile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    MediaQueryData deviceInfo = MediaQuery.of(context);

    final List<Widget> pages = [
    const Center(child: Text('Page 1 Content')),
    const Center(child: Text('Page 2 Content')),
    const Center(child: Text('Page 3 Content')),
  ];

    return (deviceInfo.orientation.toString() == 'Orientation.landscape')
        ? DesktopDesigner(width: deviceInfo.size.width, pages: pages,)
        : MobileDesigner(width: deviceInfo.size.width);
  }
}
