import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:urban_gents_app/core/provider/shop_page_provider.dart';
import 'package:urban_gents_app/features/homepage/model/product_model.dart';

import 'icon_button.dart';

class CartContainer extends StatelessWidget {
  final ProductModel cartProduct;
  const CartContainer({super.key, required this.cartProduct});
  void removeFromCart(BuildContext context) {
    context.read<ShopPageProvider>().removeFromCart(cartProduct);
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ShopPageProvider>(context);
    final counter = provider.count;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(cartProduct.productimage),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: GestureDetector(
                  onTap: () => removeFromCart(context),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: Icon(Icons.remove),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  cartProduct.productname,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  cartProduct.productprice,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    QuantityButton(
                      icon: Icons.remove,
                      onTap: () {
                        provider.decrement();
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Container(
                        width: 70,
                        height: 30,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade600,
                        ),
                        child: Consumer<ShopPageProvider>(
                          builder: (context, value, child) {
                            return Text(
                              "${value.count}",
                              style: GoogleFonts.poppins(color: Colors.white),
                            );
                          },
                        ),
                      ),
                    ),
                    QuantityButton(
                      icon: Icons.add,
                      onTap: () {
                        provider.increment();
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
