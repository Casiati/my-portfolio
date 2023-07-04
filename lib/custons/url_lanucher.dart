import 'package:url_launcher/url_launcher_string.dart';

class UrlLauncher {
  static Future<void> launchLink(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
      throw Exception('Could not launch $url');
    }
  }
}
