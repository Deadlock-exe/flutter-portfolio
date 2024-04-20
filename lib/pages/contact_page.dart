import 'package:flutter/material.dart';
import 'package:portfolio/util/email_service.dart';
import 'package:portfolio/util/url_launcher.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  EmailService emailService = EmailService();

  final TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        centerTitle: true,
        title: const Text(
          "CONTACT ME",
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 3,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/images/conversation.png',
                fit: BoxFit.cover,
                width: 220,
                height: 220,
              ),
              const SizedBox(
                height: 60,
              ),
              Text(
                "Feel free to reach out",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[400],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GestureDetector(
                      onTap: () {
                        final Uri url =
                            Uri.parse('https://instagram.com/g._.adityaa');
                        launchMyUrl(url);
                      },
                      child: Image.asset(
                        'assets/images/instagram.png',
                        fit: BoxFit.cover,
                        width: 40,
                        height: 40,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        final Uri url =
                            Uri.parse('https://twitter.com/G__aditya');
                        launchMyUrl(url);
                      },
                      child: Image.asset(
                        'assets/images/twitter.png',
                        fit: BoxFit.cover,
                        width: 40,
                        height: 40,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        final Uri url =
                            Uri.parse('https://github.com/Deadlock-exe');
                        launchMyUrl(url);
                      },
                      child: Image.asset(
                        'assets/images/github.png',
                        fit: BoxFit.cover,
                        width: 40,
                        height: 40,
                      ),
                    ),
                  ],
                ),
              ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Image.asset(
              //       'assets/images/twitter.png',
              //       fit: BoxFit.cover,
              //       width: 50,
              //       height: 50,
              //     ),
              //     const SizedBox(
              //       width: 20,
              //     ),
              //     const Text(
              //       "@G__aditya",
              //       style: TextStyle(
              //         color: Colors.white,
              //       ),
              //     ),
              //   ],
              // ),
              // const SizedBox(
              //   height: 20,
              // ),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.center,
              //   children: [
              //     Image.asset(
              //       'assets/images/instagram.png',
              //       fit: BoxFit.cover,
              //       width: 50,
              //       height: 50,
              //     ),
              //     const SizedBox(
              //       width: 20,
              //     ),
              //     const Text(
              //       "@g._.adityaa",
              //       style: TextStyle(
              //         color: Colors.white,
              //       ),
              //     ),
              //   ],
              // ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 25,
                  ),
                ),
                onPressed: () {
                  showModalBottomSheet(
                    backgroundColor: Colors.grey[900],
                    context: context,
                    builder: (context) {
                      return Container(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Send a message :)",
                              style: TextStyle(
                                color: Colors.grey[200],
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 20),
                            // Add your form or input fields here
                            TextFormField(
                              controller: _messageController,
                              maxLength: 300,
                              style: TextStyle(
                                color: Colors.grey[200],
                              ),
                              decoration: InputDecoration(
                                label: Text(
                                  "Anything but intrusive thoughts...",
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                  ),
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                              maxLines: 3,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: ElevatedButton(
                                onPressed: () async {
                                  // Retrieve the text from the TextFormField
                                  String message = _messageController.text;

                                  // Check if the message is not empty before sending
                                  if (message.isNotEmpty) {
                                    await emailService.sendMyEmail(
                                      "shadowfox10082004@gmail.com",
                                      "Anonymous portfolio message",
                                      message, // Pass the retrieved message
                                    );
                                    print(message);
                                  }
                                  _messageController.clear();
                                  // ignore: use_build_context_synchronously
                                  Navigator.pop(context);
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 30,
                                    vertical: 20,
                                  ),
                                ),
                                child: const Text(
                                  "Send",
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
                child: const Text(
                  "Send a message :)",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
