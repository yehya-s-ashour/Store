import 'package:flutter/material.dart';
import 'package:application_1/ui/widgets/saleWidget.dart';

import '../../data.dart';

class productsList extends StatelessWidget {
  @override
  Function function;
  productsList(this.function);
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: products.map((e) {
          return saleWidget(e, function);
        }).toList(),
      ),
    );
  }
}
