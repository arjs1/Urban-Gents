import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:urban_gents_app/core/provider/shop_page_provider.dart';
import 'package:urban_gents_app/features/homepage/model/carousel_model.dart';
import 'package:urban_gents_app/features/homepage/model/product_model.dart';
import 'package:urban_gents_app/features/homepage/widgets/clothes_container.dart';

class CollectionPage extends StatefulWidget {
  const CollectionPage({super.key});

  @override
  State<CollectionPage> createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> {
  @override
  Widget build(BuildContext context) {
    final products = context.watch<ShopPageProvider>().shop;
    var categorydata =
        ModalRoute.of(context)?.settings.arguments as ProductCart;
    return Scaffold(
      body: Consumer(
        builder: (context, value, child) {
          return ListView(
            children: [
              ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: categorydata.products.length,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: 12,
                  );
                },
                itemBuilder: (BuildContext context, int index) {
                  final product = categorydata.products[index].category;
                  // return Text(categorydata.products[index].productprice);
                  // return ClothesContainer(product: );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
