import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  final VoidCallback onCartPressed;
  final VoidCallback onFavoritePressed;

  const ProductCard({
    super.key,
    required this.product,
    required this.onCartPressed,
    required this.onFavoritePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // ================= IMAGE =================

            Expanded(
              flex: 5,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xfff1f1f3),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image.network(
                    product.image,
                    fit: BoxFit.cover,

                    // Loading
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) {
                        return child;
                      }

                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    },

                    // Error
                    errorBuilder: (context, error, stackTrace) {
                      return const Center(
                        child: Icon(
                          Icons.image_not_supported,
                          size: 50,
                          color: Colors.grey,
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // ================= NAME =================

            Text(
              product.name,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

            const SizedBox(height: 8),

            // ================= DESCRIPTION =================

            Text(
              product.description,
              style: const TextStyle(
                fontSize: 17,
                color: Color(0xff555555),
              ),
            ),

            const SizedBox(height: 16),

            // ================= PRICE =================

            Text(
              '\$${product.price.toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Color(0xff009b5b),
              ),
            ),

            const SizedBox(height: 16),

            // ================= DETAILS =================

            Text(
              product.details,
              style: const TextStyle(
                fontSize: 16,
                height: 1.5,
                color: Color(0xff444444),
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),

            const SizedBox(height: 20),

            // ================= BUTTONS =================

            Row(
              children: [

                // ADD TO CART
                Expanded(
                  flex: 5,
                  child: SizedBox(
                    height: 58,
                    child: ElevatedButton(
                      onPressed: onCartPressed,
                      style: ElevatedButton.styleFrom(
                        elevation: 0,

                        backgroundColor: product.isInCart
                            ? const Color(0xff00a65a)
                            : Colors.white,

                        foregroundColor: product.isInCart
                            ? Colors.white
                            : const Color(0xff008f52),

                        side: BorderSide(
                          color: const Color(0xff008f52),
                          width: product.isInCart ? 0 : 2,
                        ),

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      child: Text(
                        product.isInCart
                            ? 'Added to Cart'
                            : 'Add to Cart',
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 16),

                // FAVORITE
                Expanded(
                  flex: 4,
                  child: SizedBox(
                    height: 58,
                    child: ElevatedButton(
                      onPressed: onFavoritePressed,
                      style: ElevatedButton.styleFrom(
                        elevation: 0,

                        backgroundColor: product.isFavorite
                            ? const Color(0xfff20d0d)
                            : Colors.white,

                        foregroundColor: product.isFavorite
                            ? Colors.white
                            : const Color(0xffc62828),

                        side: BorderSide(
                          color: const Color(0xffd59a9a),
                          width: product.isFavorite ? 0 : 2,
                        ),

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      child: Text(
                        product.isFavorite
                            ? 'Favorited'
                            : 'Favorite',
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}