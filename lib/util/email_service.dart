import 'package:email_sender/email_sender.dart';

class EmailService {
  EmailSender _emailSender = EmailSender();

  Future<Map<String, dynamic>> sendMyEmail(
      String toEmail, String subject, String body) async {
    try {
      var response =
          await _emailSender.sendMessage(toEmail, "title", subject, body);
      print(response);
      return response;
    } catch (e) {
      print('error meow');
      return {'error': 'Error sending email: $e'};
    }
  }
}
