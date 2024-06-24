import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:urban_gents_app/core/provider/shop_page_provider.dart';
import 'package:urban_gents_app/features/descriptionpage/widget/description_widget.dart';
import 'package:urban_gents_app/features/homepage/model/product_model.dart';

class DescriptionPage extends StatefulWidget {
  final ProductModel product;

  const DescriptionPage({
    super.key,
    required this.product,
  });
  void addtowishlist(BuildContext context) {
    context.read<ShopPageProvider>().addToWishlist(product);
  }

  void addtocart(BuildContext context) {
    context.read<ShopPageProvider>().addToCart(product);
  }

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ShopPageProvider>(context);
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Text(
          "Product Details".toUpperCase(),
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            letterSpacing: 1,
            fontSize: 16,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => widget.addtowishlist(context),
            icon: !provider.isExist(widget.product)
                ? Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.white,
                  )
                : Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: ListView(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.6,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    widget.product.productimage,
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  size: 25,
                  color: Colors.amber.shade600,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  widget.product.productstar,
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  widget.product.productreview,
                  style: GoogleFonts.poppins(
                    color: Colors.grey.shade500,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              widget.product.productname,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w500,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              widget.product.productprice,
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            GestureDetector(
              onTap: () => widget.addtocart(context),
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.orange[800],
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  "Add To Cart",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(),
            SizedBox(
              height: 10,
            ),
            DescriptionWidget(
              title: "Product Description",
              titledescription: widget.product.productdescription.toString(),
            ),
            SizedBox(
              height: 15,
            ),
            DescriptionWidget(
              title: "Model Size",
              titledescription: widget.product.productSize.toString(),
            ),
            SizedBox(
              height: 15,
            ),
            DescriptionWidget(
              title: "Length",
              titledescription: widget.product.productLength.toString(),
            ),
            SizedBox(
              height: 15,
            ),
            DescriptionWidget(
              title: "Fit",
              titledescription: widget.product.productFit.toString(),
            ),
          ],
        ),
      ),
    );
  }
}
