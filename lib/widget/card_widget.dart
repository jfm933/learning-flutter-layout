import 'package:flutter/material.dart';
import 'package:flutter_youtube/class/item_class.dart';
import 'package:flutter_youtube/pages/description_page.dart';

import '../core/constants.dart';

class CardWidget extends StatelessWidget {
  final ItemClass cardProperty;
  CardWidget({
    super.key,
    required this.cardProperty,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DescriptionPage( descriptionProperty: cardProperty),
          ),
        );
      },
      child: Card(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(kDouble10),
          child: Column(
            children: [
              Image.asset(cardProperty.image),
              Text(
                cardProperty.title,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(cardProperty.description),
            ],
          ),
        ),
      ),
    );
  }
}
