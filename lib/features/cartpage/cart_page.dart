import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:urban_gents_app/core/provider/shop_page_provider.dart';
import 'package:urban_gents_app/features/cartpage/widget/cart_container.dart';
import 'package:urban_gents_app/features/homepage/widgets/clothes_container.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    final cartdata = context.watch<ShopPageProvider>().cart;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: Title(
          color: Colors.white,
          child: Align(
            alignment: Alignment.center,
            child: Text(
              "Cart Page".toUpperCase(),
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
              ),
            ),
          ),
        ),
        leadingWidth: 150,
      ),
      body: Consumer<ShopPageProvider>(builder: (context, value, child) {
        return ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: cartdata.length,
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 12,
                );
              },
              itemBuilder: (BuildContext context, int index) {
                final product = cartdata[index];
                return CartContainer(cartProduct: product);
              },
            ),
          ],
        );
      }),
    );
  }
}
