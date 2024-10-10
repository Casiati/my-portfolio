import 'package:flutter/material.dart';
import 'package:my_portfolio/pages/devices/desktop/desktop.dart';
import 'package:my_portfolio/pages/devices/mobile/mobile.dart';
import 'package:my_portfolio/projects/nubank_clone.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.deviceInfo});

  final MediaQueryData deviceInfo;

  @override
  Widget build(BuildContext context) {


    final List<Widget> pages = [
      Center(
          child: NubankClone(
        width: deviceInfo.size.width,
      )),
      const Center(child: Text('Page 2 Content')),
      const Center(child: Text('Page 3 Content')),
    ];
    return (deviceInfo.orientation.toString() == 'Orientation.landscape')
        ? DesktopDesigner(
            width: deviceInfo.size.width,
            pages: pages,
          )
        : MobileDesigner(
            width: deviceInfo.size.width,
            pages: pages,
          );
  }
}
