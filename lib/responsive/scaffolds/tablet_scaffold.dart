import 'package:flutter/material.dart';
import 'package:portfolio/widgets/appbar.dart';
import 'package:portfolio/widgets/box.dart';
import 'package:portfolio/widgets/drawer.dart';
import 'package:portfolio/widgets/gridview.dart';
import 'package:portfolio/widgets/tile.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: const MyAppBar(),
      drawer: const MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const AspectRatio(
              aspectRatio: 4,
              child: SizedBox(
                width: double.infinity,
                child: MyGridView(
                  itemBuilderWidget: MyBox(),
                  itemCount: 4,
                  crossAxisCount: 4,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return const MyTile();
                },
                shrinkWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
