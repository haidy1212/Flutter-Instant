import 'package:flutter/material.dart';

import '../data/products_data.dart';
import '../widgets/product_card.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({super.key});

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {

  // ================= CART =================

  void toggleCart(int index) {
    setState(() {
      products[index].isInCart =
          !products[index].isInCart;
    });
  }

  // ================= FAVORITE =================

  void toggleFavorite(int index) {
    setState(() {
      products[index].isFavorite =
          !products[index].isFavorite;
    });
  }

  // ================= UI =================

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {

            int crossAxisCount =
                constraints.maxWidth >= 700 ? 2 : 1;

            return GridView.builder(
              padding: const EdgeInsets.all(24),

              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                crossAxisSpacing: 40,
                mainAxisSpacing: 30,

                // شكل الـ Card
                childAspectRatio: 0.78,
              ),

              itemCount: products.length,

              itemBuilder: (context, index) {

                return ProductCard(
                  product: products[index],

                  onCartPressed: () {
                    toggleCart(index);
                  },

                  onFavoritePressed: () {
                    toggleFavorite(index);
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}