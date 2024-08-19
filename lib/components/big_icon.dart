import 'package:flutter/material.dart';

class BigIcon extends StatelessWidget {
  const BigIcon({
    super.key,
    required this.borderRadius,
    required this.iconName,
  });

  final double borderRadius;
  final String iconName;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AspectRatio(
        aspectRatio: 1 / 1.3,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Container(
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(borderRadius),
                    child: Container(
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  iconName,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
