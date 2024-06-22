import 'package:bags/models/allProducts.dart';
import 'package:bags/screens/details_screen.dart';
import 'Bagcard.dart';
import 'package:flutter/material.dart';

class productts extends StatelessWidget {
  const productts({
    super.key,
  });

  @override
  //final Product product;
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.0,
              crossAxisSpacing: 2,
              mainAxisSpacing: 2),
          shrinkWrap: true,
          itemCount: products.length,
          itemBuilder: (context, index) => Bagcard(
              product: products[index],
              press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                            product: products[index],
                          )))),
        ),
      ),
    );
  }
}
