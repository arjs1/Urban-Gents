import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:urban_gents_app/core/provider/shop_page_provider.dart';
import 'package:urban_gents_app/features/homepage/widgets/clothes_container.dart';

class WishlistPage extends StatefulWidget {
  const WishlistPage({super.key});

  @override
  State<WishlistPage> createState() => _WishlistPageState();
}

class _WishlistPageState extends State<WishlistPage> {
  @override
  Widget build(BuildContext context) {
    final wishlistdata = context.watch<ShopPageProvider>().wishlist;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: Title(
          color: Colors.white,
          child: Align(
            alignment: Alignment.center,
            child: Text(
              "WishList Page".toUpperCase(),
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
      backgroundColor: Colors.grey.shade100,
      body: Consumer<ShopPageProvider>(builder: (context, value, child) {
        return ListView(
          children: [
            SizedBox(
              height: 20,
            ),
            ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: wishlistdata.length,
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(
                  height: 12,
                );
              },
              itemBuilder: (BuildContext context, int index) {
                final product = wishlistdata[index];
                return ClothesContainer(product: product);
              },
            ),
          ],
        );
      }),
    );
  }
}
