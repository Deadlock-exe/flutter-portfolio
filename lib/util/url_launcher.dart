import 'package:url_launcher/url_launcher.dart';

Future<void> launchMyUrl(Uri url) async {
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw Exception('Could not launch $url');
  }
}
