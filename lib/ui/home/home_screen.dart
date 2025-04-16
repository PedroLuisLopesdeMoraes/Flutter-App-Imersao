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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          spacing: 32,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Image.asset('assets/assets/banners/logo.png', width: 147,)),
            Text("Boas-vindas !"),
            TextFormField(),
            Text("Escolha por categoria"),
            Image.asset('assets/assets/banners/banner_promo.png'),
            Text("Bem avaliados")
          ],
        ),
      ),
    );
  }
}
