import 'package:flutter/material.dart';
import 'package:responsive_navigation_bar/responsive_navigation_bar.dart';
class HomePage extends StatefulWidget {
  static const String id = "home_page";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  int _selectedIndex = 0;
  void changeTab(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("bottomNavigationBar"),
      ),
      bottomNavigationBar: ResponsiveNavigationBar(
        selectedIndex: _selectedIndex,
        onTabChange: changeTab,
        // showActiveButtonText: false,
        textStyle: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        navigationBarButtons: const <NavigationBarButton>[
          NavigationBarButton(
            text: 'Tab 1',
            icon: Icons.people,
            backgroundGradient: LinearGradient(
              colors: [Colors.yellow, Colors.green, Colors.blue],
            ),
          ),
          NavigationBarButton(
            text: 'Tab 2',
            icon: Icons.star,
            backgroundGradient: LinearGradient(
              colors: [Colors.cyan, Colors.teal],
            ),
          ),
          NavigationBarButton(
            text: 'Tab 3',
            icon: Icons.favorite,
            backgroundGradient: LinearGradient(
              colors: [Colors.cyan, Colors.teal],
            ),
          ),
          NavigationBarButton(
            text: 'Tab 4',
            icon: Icons.settings,
            backgroundGradient: LinearGradient(
              colors: [Colors.green, Colors.yellow],
            ),
          ),
        ],
      ),
    );
  }
}
