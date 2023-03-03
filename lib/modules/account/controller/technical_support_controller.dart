import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class TechicalSupportController extends GetxController {
  final hasCallSupport = false.obs;
  Future<void> launchInBrowser(Uri url) async {
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  Future<void> launchEmail(Uri email) async {
    if (await launchUrl(Uri.parse('$email'))) {
    } else {
      throw 'Could not launch';
    }
  }
}
