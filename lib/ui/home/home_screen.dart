import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  // Suggested code may be subject to a license. Learn more: ~LicenseLog:1227724413.
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
        ],
      ),
    );
  }
}
