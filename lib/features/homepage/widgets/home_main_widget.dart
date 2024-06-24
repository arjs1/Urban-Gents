import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:urban_gents_app/core/provider/shop_page_provider.dart';
import 'package:urban_gents_app/core/utilis/carousel_data.dart';
import 'package:urban_gents_app/features/collectionpage/collection_page.dart';
import 'package:urban_gents_app/features/homepage/model/carousel_model.dart';
import 'package:urban_gents_app/features/homepage/model/product_model.dart';
import 'package:urban_gents_app/features/homepage/widgets/carousel_widget.dart';
import 'package:urban_gents_app/features/homepage/widgets/clothes_container.dart';
import 'package:urban_gents_app/features/homepage/widgets/header_page.dart';
import 'package:urban_gents_app/features/homepage/widgets/search_box.dart';
import 'package:urban_gents_app/features/viewallpage/viewall_page.dart';

class HomeMainWidget extends StatefulWidget {
  const HomeMainWidget({super.key});

  @override
  State<HomeMainWidget> createState() => _HomeMainWidgetState();
}

class _HomeMainWidgetState extends State<HomeMainWidget> {
  @override
  Widget build(BuildContext context) {
    final products = context.watch<ShopPageProvider>().shop;

    return Scaffold(
      backgroundColor: Colors.black87,
      body: Consumer<ShopPageProvider>(
        builder: (context, value, child) {
          return ListView(
            children: [
              SizedBox(
                height: 10,
              ),
              HeaderPage(),
              SizedBox(
                height: 20,
              ),
              SearchBox(),
              SizedBox(
                height: 40,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 2,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        CarouselSlider.builder(
                          itemCount: carouseldata.length,
                          itemBuilder: (BuildContext context, int itemIndex,
                                  int pageViewIndex) =>
                              Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const CollectionPage(),
                                    settings: RouteSettings(
                                      arguments: ProductCart.individualCart(
                                        products,
                                        Category.casual,
                                      ),
                                    ),
                                  ),
                                );
                              },
                              child: CarouselWidget(
                                imagePath: carouseldata[itemIndex].imagePath,
                                category: carouseldata[itemIndex].category,
                              ),
                            ),
                          ),
                          options: CarouselOptions(viewportFraction: 1),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "New Drops",
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ViewallPage(),
                                    ),
                                  );
                                },
                                child: Text(
                                  "see all",
                                  style: GoogleFonts.poppins(
                                    color: Colors.red,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 2,
                          separatorBuilder: (BuildContext context, int index) {
                            return SizedBox(
                              height: 12,
                            );
                          },
                          itemBuilder: (BuildContext context, int index) {
                            final product = products[index];
                            return ClothesContainer(product: product);
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
