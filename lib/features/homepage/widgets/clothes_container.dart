import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:urban_gents_app/core/provider/shop_page_provider.dart';
import 'package:urban_gents_app/features/descriptionpage/description_page.dart';
import 'package:urban_gents_app/features/homepage/model/product_model.dart';

class ClothesContainer extends StatelessWidget {
  final ProductModel product;
  const ClothesContainer({
    super.key,
    required this.product,
  });
  void addtowishlist(BuildContext context) {
    context.read<ShopPageProvider>().addToWishlist(product);
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ShopPageProvider>(context);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(product.productimage),
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
                  onTap: () => addtowishlist(context),
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: !provider.isExist(product)
                        ? Icon(Icons.favorite_border_outlined)
                        : Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      size: 18,
                      color: Colors.amber.shade600,
                    ),
                    Text(
                      product.productstar,
                      style: GoogleFonts.poppins(),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      product.productreview,
                      style: GoogleFonts.poppins(
                        color: Colors.grey.shade500,
                        fontSize: 9,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  product.productname,
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  product.productprice,
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DescriptionPage(),
                      ),
                    );
                  },
                  child: Text(
                    "view more",
                    style: GoogleFonts.poppins(
                      fontSize: 10,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
