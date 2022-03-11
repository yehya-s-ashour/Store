import 'package:flutter/widgets.dart';
import 'package:application_1/ui/widgets/productsList.dart';
import 'package:application_1/ui/widgets/productsRowWidget.dart';
import 'package:application_1/ui/widgets/saleWidget.dart';

import '../../data.dart';

class Homepage extends StatelessWidget {
  Function function;
  Homepage(this.function);
  @override
  Widget build(BuildContext context) {
    /*return SingleChildScrollView(
      child: Column(children: [
        productsRowWidget(),
        const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            ' Products',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ),
        productsList()
      ]),
    );*/

    return ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return saleWidget(products[index], function);
        });
  }
}
