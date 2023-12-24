import 'package:flutter/material.dart';
import 'package:flutter_youtube/class/item_class.dart';
import 'package:flutter_youtube/core/constants.dart';

import '../widget/card_widget.dart';

class HomePage extends StatelessWidget {
  // Membuat GlobalKey
  final GlobalKey _containerKey = GlobalKey();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter YouTube'),
      ),
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            CardWidget(
              cardProperty: ItemClass(
                  title: "Rocket",
                  description: "This is a rocket",
                  image: "images/rocket.png"),
            ),
            Row(
              children: [
                Expanded(
                  child: CardWidget(
                    cardProperty: ItemClass(
                        title: "Space",
                        description: "This is a space",
                        image: "images/space.png"),
                  ),
                ),
                Expanded(
                  child: CardWidget(
                    cardProperty: ItemClass(
                        title: "Travel",
                        description: "This is a Travel",
                        image: "images/travel.png"),
                  ),
                ),
              ],
            ),
            CardWidget(
              cardProperty: ItemClass(
                  title: "Yeah",
                  description: "This is a Yeah",
                  image: "images/yeah.png"),
            
               ),
          ],
        ),
      ),
    );
  }

  // Mendapatkan tinggi aktual dari Container setelah widget selesai build
  void printContainerHeight() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final RenderBox? containerRenderBox =
          _containerKey.currentContext?.findRenderObject() as RenderBox?;
      final containerHeight = containerRenderBox!.size.height;
      print('Container height: $containerHeight');
    });
  }
}
