import 'package:flutter/material.dart';

import '../../Product.dart';

class saleWidget extends StatelessWidget {
  Product product;
  Function function;
  saleWidget(this.product, this.function);

  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 360,
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.blueAccent, borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: CircleAvatar(
                  radius: 40, backgroundImage: AssetImage(product.imagePath))),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                product.name,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text(
                product.price.toString() + '\$',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          IconButton(
            onPressed: () {
              function(product);
            },
            icon: Icon(Icons.favorite),
            color: product.isLiked ? Colors.red : Colors.grey[300],
          )
        ],
      ),
    );
  }
}
