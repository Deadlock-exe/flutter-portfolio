import 'package:flutter/material.dart';

class MyGridView extends StatelessWidget {
  final int itemCount;
  final int crossAxisCount;
  final Widget itemBuilderWidget;
  const MyGridView({
    super.key,
    required this.crossAxisCount,
    required this.itemCount,
    required this.itemBuilderWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: itemCount,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
        ),
        itemBuilder: (context, index) {
          return itemBuilderWidget;
        },
      ),
    );
  }
}
