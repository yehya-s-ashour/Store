import 'package:flutter/material.dart';
import 'package:application_1/ui/widgets/previewWidget.dart';

import '../../data.dart';

class productsRowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: products.map((e) {
          return previewWidget(e);
        }).toList(),
      ),
    );
  }
}
