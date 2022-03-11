import 'package:flutter/widgets.dart';
import 'package:application_1/ui/widgets/productsList.dart';
import 'package:application_1/ui/widgets/saleWidget.dart';

import '../../data.dart';

class FavouritePage extends StatelessWidget {
  Function function;
  FavouritePage(this.function);
  @override
  Widget build(BuildContext context) {
    return products.where((e) => e.isLiked == true).length > 0
        ? ListView.builder(
            itemCount: products.where((element) => element.isLiked).length,
            itemBuilder: (context, index) {
              return saleWidget(
                  products.where((element) => element.isLiked).toList()[index],
                  function);
            })
        : const Center(
            child: Text(
            'There is no favourites until now',
            style: TextStyle(fontSize: 22),
          ));
  }
}
