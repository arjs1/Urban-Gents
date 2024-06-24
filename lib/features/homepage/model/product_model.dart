enum Category { formal, casual }

class ProductModel {
  final String productname;
  final String productprice;
  final String productimage;
  final String productstar;
  final String productreview;
  final String? productdescription;
  final String? productSize;
  final String? productLength;
  final String? productFit;

  final Category category;

  ProductModel({
    required this.productname,
    required this.productprice,
    required this.productimage,
    required this.productstar,
    required this.productreview,
    required this.productSize,
    required this.productdescription,
    required this.productLength,
    required this.productFit,
    required this.category,
  });
}

class ProductCart {
  final List<ProductModel> products;
  final Category category;

  ProductCart({
    required this.products,
    required this.category,
  });

  ProductCart.individualCart(List<ProductModel> seperatedCart, this.category)
      : products = seperatedCart
            .where(
              (element) => element.category == category,
            )
            .toList();
}
