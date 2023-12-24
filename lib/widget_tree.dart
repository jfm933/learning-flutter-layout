import 'package:flutter/material.dart';
import 'package:flutter_youtube/core/notifier.dart';
import 'package:flutter_youtube/pages/home_page.dart';
import 'package:flutter_youtube/pages/profile_page.dart';

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  int currentPage = 0;

  bool isDarkMode = false;

  List<Widget> page = [
    HomePage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[currentPage],
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedIndex: currentPage,
        onDestinationSelected: (value) {
          setState(() {
            currentPage = value;
          });
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          isDarkModeNotifier.value = !isDarkModeNotifier.value;
          isDarkMode = !isDarkMode;
        });
      }, child:  Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),),
    );
  }
}
