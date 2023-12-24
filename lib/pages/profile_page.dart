import 'package:flutter/material.dart';
import 'package:flutter_youtube/core/constants.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Profile Page'),
        ),
        body: Column(
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('images/yeah.png'),
            ),
            SizedBox(
              height: kDouble10,
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Flutter Mapp'),
            ),
            ListTile(
                leading: Icon(Icons.email),
              title: Text('info@fluttermapp.com'),
            ),
            ListTile(
                leading: Icon(Icons.web),
              title: Text('Name'),
              subtitle: Text('Fluttermapp.com'),
            ),
          ],
        ));
  }
}
