import 'package:ecommerce_user/provider/product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'featured_card.dart';

class FeaturedProducts extends StatefulWidget {
  @override
  _FeaturedProductsState createState() => _FeaturedProductsState();
}

class _FeaturedProductsState extends State<FeaturedProducts> {
  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);

    return Container(
        height: 180,
        child: Card(
          color: Colors.black,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: productProvider.products.length,
              itemBuilder: (_, index) {
                return FeaturedCard(
                  product: productProvider.products[index],
                );
              }),
        ));
  }
}
