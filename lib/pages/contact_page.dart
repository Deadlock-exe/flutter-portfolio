import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
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
                height: 45,
              ),
              Image.asset(
                'assets/images/operator.png',
                fit: BoxFit.cover,
                width: 200,
                height: 200,
              ),
              const SizedBox(
                height: 45,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/twitter.png',
                    fit: BoxFit.cover,
                    width: 50,
                    height: 50,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    "@G__aditya",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/instagram.png',
                    fit: BoxFit.cover,
                    width: 50,
                    height: 50,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    "@g._.adityaa",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
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
                            const SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              style: ElevatedButton.styleFrom(
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
