import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:urban_gents_app/core/provider/shop_page_provider.dart';
import 'package:urban_gents_app/features/homepage/widgets/clothes_container.dart';

class ViewallPage extends StatefulWidget {
  const ViewallPage({super.key});

  @override
  State<ViewallPage> createState() => _ViewallPageState();
}

class _ViewallPageState extends State<ViewallPage> {
  @override
  Widget build(BuildContext context) {
    final products = context.watch<ShopPageProvider>().shop;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Text(
          "View All".toUpperCase(),
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            letterSpacing: 1,
            fontSize: 16,
          ),
        ),
      ),
      body: Consumer<ShopPageProvider>(
        builder: (context, value, child) {
          return ListView.separated(
            itemCount: products.length,
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 12,
              );
            },
            itemBuilder: (BuildContext context, int index) {
              final product = products[index];
              return ClothesContainer(product: product);
            },
          );
        },
      ),
    );
  }
}
