import 'package:flutter/material.dart';
import 'package:flutter_youtube/class/item_class.dart';
import 'package:flutter_youtube/core/constants.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({super.key, required this.descriptionProperty});
  final ItemClass descriptionProperty;

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  double fontSizeCustom = 22;
  Icon iconFavourite = Icon(Icons.favorite_border);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.descriptionProperty.title),
        actions: [
          IconButton(
            onPressed: () {
             ScaffoldMessenger.of(context).showSnackBar(
               SnackBar(
                 content: Text("This is a snackbar"),
                 duration: Duration(seconds: 2),
                 behavior: SnackBarBehavior.floating,
               ),
             );
            },
            icon: Icon(Icons.info),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                if (iconFavourite.icon == Icons.favorite_border) {
                  iconFavourite = Icon(
                    Icons.favorite,
                    color: Colors.red,
                  );
                } else {
                  iconFavourite = Icon(Icons.favorite_border);
                }
              });
            },
            icon: iconFavourite,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.bookmark_border),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kDouble10),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 300,
                child: Image.asset(widget.descriptionProperty.image),
              ),
              FittedBox(
                child: Text(
                  widget.descriptionProperty.title,
                  style: TextStyle(
                    fontSize: fontSizeCustom,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Wrap(
                spacing: kDouble10,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        fontSizeCustom = 12;
                      });
                    },
                    child: Text("Small text"),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        fontSizeCustom = 22;
                      });
                    },
                    child: Text("Medium Text"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        fontSizeCustom = 50;
                      });
                    },
                    child: Text("Large Text"),
                  ),
                  FilledButton(
                    onPressed: () {
                      setState(() {
                        fontSizeCustom = 100;
                      });
                    },
                    child: Text("Huge Text"),
                  ),
                ],
              ),
              Text(
                baconDescription,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(
                height: kDouble10,
              ),
              Text(
                baconDescription,
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
