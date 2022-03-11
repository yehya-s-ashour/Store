import 'package:flutter/material.dart';

import '../../Product.dart';

class previewWidget extends StatelessWidget {
  Product product;
  previewWidget(this.product);
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(product.imagePath),
          fit: BoxFit.fill,
        ),
      ),
      child: Align(
          alignment: Alignment.bottomCenter,
          child: Text(
            product.name,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 30, color: Colors.white),
          )),
    );
  }
}
