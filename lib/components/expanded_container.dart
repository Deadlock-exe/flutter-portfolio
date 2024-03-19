import 'package:flutter/material.dart';

class ExpandedContainer extends StatelessWidget {
  final String text;
  const ExpandedContainer({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Container(
            color: Colors.grey[200],
            height: 50,
            child: Center(
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 15,
                  letterSpacing: 1,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
