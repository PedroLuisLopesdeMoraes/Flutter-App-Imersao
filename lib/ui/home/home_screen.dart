import 'package:flutter/material.dart';
import 'package:myapp/data/categories_data.dart';
import 'package:myapp/ui/home/widgets/categorie_widget.dart';

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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            spacing: 32,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset('assets/assets/banners/logo.png', width: 147),
              ),
              Text("Boas-vindas !"),
              TextFormField(),
              Text("Escolha por categoria"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 8,
                  children: List.generate(CategoriesData.listCategories.length, (
                    index,
                  ) {
                    return CategoryWidget(
                      category: CategoriesData.listCategories[index],
                    );
                  }),
                ),
              ),
              Image.asset('assets/assets/banners/banner_promo.png'),
              Text("Bem avaliados"),
              SizedBox(height: 64,)
            ],
          ),
        ),
      ),
    );
  }
}
