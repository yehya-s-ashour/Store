import 'package:flutter/material.dart';
import 'package:application_1/data.dart';
import 'package:application_1/ui/pages/FavouritePage.dart';
import 'package:application_1/ui/pages/HomePage.dart';
import 'package:application_1/ui/widgets/productsList.dart';

import 'Product.dart';

void main() {
  runApp(MaterialApp(
    home: screen(),
  ));
}

class screen extends StatefulWidget {
  @override
  State<screen> createState() => _screenState();
}

class _screenState extends State<screen> with SingleTickerProviderStateMixin {
  toggleProduct(Product product) {
    int index = products.indexOf(product);
    Function function;
    products[index].isLiked = !products[index].isLiked;
    setState(() {});
  }

  int index = 0;
  late TabController tabControler;
  initTabControler() {
    tabControler = TabController(length: 3, vsync: this);
    super.initState();
  }

  void initState() {
    super.initState();
    initTabControler();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Store#1'),
        bottom: TabBar(
          controller: tabControler,
          tabs: const [
            Tab(
              icon: Icon(Icons.home),
              text: 'Home',
            ),
            Tab(
              icon: Icon(Icons.favorite),
              text: 'Favorite',
            ),
            Tab(
              icon: Icon(Icons.perm_identity),
              text: 'Profile',
            ),
          ],
        ),
      ),
      body: TabBarView(controller: tabControler, children: [
        Homepage(toggleProduct),
        
        FavouritePage(toggleProduct),
        Container(),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        //To statr from this tab
        currentIndex: index,
        onTap: (tapedIndex) {
          this.index = tapedIndex;
          tabControler.animateTo(tapedIndex);
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favourite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.perm_identity), label: 'profile'),
        ],
      ),
    );
  }
}
