import 'package:flutter/material.dart';
import 'package:urban_gents_app/features/homepage/model/product_model.dart';

class ShopPageProvider extends ChangeNotifier {
  final List<ProductModel> _shop = [
    ProductModel(
      productname: "Regular Fit Linen-blend Shirt",
      productprice: "\$29.99",
      productimage:
          "https://lp2.hm.com/hmgoepprod?set=format%5Bwebp%5D%2Cquality%5B79%5D%2Csource%5B%2F1c%2F12%2F1c128de18d1c30890a24c617cfd4068e1550a41f.jpg%5D%2Corigin%5Bdam%5D%2Ccategory%5Bmen_shirts_casual%5D%2Ctype%5BDESCRIPTIVESTILLLIFE%5D%2Cres%5Bm%5D%2Chmver%5B2%5D&call=url%5Bfile%3A%2Fproduct%2Fmain%5D",
      productstar: "4.5",
      productreview: "Reviews (99)",
      productSize:
          "Shoulder: Width: 51.0 in. (Size L), Sleeve: Length: 26.0 in. (Size L), Back: Length: 74.0 in. (Size L)",
      productdescription:
          "Regular-fit shirt in a woven cotton and linen blend. Resort collar, buttons without placket, and open chest pocket. Short sleeves, yoke at back with darts, and a straight-cut hem. Cotton and linen blends combine the softness of cotton with the sturdiness of linen, creating a beautiful, textured fabric that is breathable and perfectly draped.",
      productLength: "Regular length",
      productFit: "Regular fit",
      category: Category.casual,
    ),
    ProductModel(
      productname: "Regular Fit Linen-blend Pants",
      productprice: "\$35.99",
      productimage:
          "https://lp2.hm.com/hmgoepprod?set=format%5Bwebp%5D%2Cquality%5B79%5D%2Csource%5B%2F51%2F9a%2F519a561cca639a0b67e13ca89564f987c1c8b003.jpg%5D%2Corigin%5Bdam%5D%2Ccategory%5B%5D%2Ctype%5BDESCRIPTIVESTILLLIFE%5D%2Cres%5Bm%5D%2Chmver%5B2%5D&call=url%5Bfile%3A%2Fproduct%2Fmain%5D",
      productstar: "4.55",
      productreview: "Reviews (155)",
      productSize: "Inner leg: Length: 76.0 in. (Size L)",
      productdescription:
          "Regular-fit pants in an airy, woven cotton and linen blend. Regular waist, waistband with drawstring and covered elastic, and zip fly with hook-and-eye fastening. Side pockets and a welt back pocket. Cotton and linen blends combine the softness of cotton with the sturdiness of linen, creating a beautiful, textured fabric that is breathable and perfectly draped.",
      productLength: "Long",
      productFit: "Regular fit",
      category: Category.casual,
    ),
    ProductModel(
      productname: "Regular Fit T-shirt",
      productprice: "\$9.99",
      productimage:
          "https://lp2.hm.com/hmgoepprod?set=quality%5B79%5D%2Csource%5B%2F67%2Fdd%2F67dd4946a5604cbd6ad0562538b3e70a56390b8e.jpg%5D%2Corigin%5Bdam%5D%2Ccategory%5Bmen_tshirtstanks_shortsleeve%5D%2Ctype%5BDESCRIPTIVESTILLLIFE%5D%2Cres%5Bm%5D%2Chmver%5B2%5D&call=url[file:/product/main]",
      productstar: "5",
      productreview: "(588 reviews)",
      productSize: "",
      productdescription:
          "Regular-fit, crew-neck T-shirt in lightweight cotton jersey with a printed motif at front and comfortable, classic silhouette.",
      productLength: "Regular length",
      productFit: "Regular fit",
      category: Category.casual,
    ),
    ProductModel(
      productname: "Regular Fit Rib-knit Resort Shirt",
      productprice: "\$36.99",
      productimage:
          "https://lp2.hm.com/hmgoepprod?set=format%5Bwebp%5D%2Cquality%5B79%5D%2Csource%5B%2F73%2F36%2F733613daf495c6d25fddf6f8326843c9873ecb05.jpg%5D%2Corigin%5Bdam%5D%2Ccategory%5B%5D%2Ctype%5BDESCRIPTIVESTILLLIFE%5D%2Cres%5Bm%5D%2Chmver%5B2%5D&call=url%5Bfile%3A%2Fproduct%2Fmain%5D",
      productstar: "4.5",
      productreview: "Reviews (53)",
      productSize:
          "Sleeve: Length: 24.0 in. (Size L), Front: Length: 72.5 in. (Size L)",
      productdescription:
          "Regular-fit, rib-knit shirt in a viscose and cotton blend. Resort collar, buttons at front, and short sleeves.",
      productLength: "Regular length",
      productFit: "Regular fit",
      category: Category.casual,
    ),
    ProductModel(
      productname: "Baggy Jeans",
      productprice: "\$39.99",
      productimage:
          "https://lp2.hm.com/hmgoepprod?set=format%5Bwebp%5D%2Cquality%5B79%5D%2Csource%5B%2F22%2F03%2F2203bb3c23a39f3dd6978e64c84fe4cb5fbc796c.jpg%5D%2Corigin%5Bdam%5D%2Ccategory%5B%5D%2Ctype%5BDESCRIPTIVESTILLLIFE%5D%2Cres%5Bm%5D%2Chmver%5B2%5D&call=url%5Bfile%3A%2Fproduct%2Fmain%5D",
      productstar: "4.5",
      productreview: "(6 reviews)",
      productSize:
          "Inner leg: Length: 77.0 in. (Size 33/32), Waist: Circumference: 91.0 in. (Size 33/32)",
      productdescription:
          "5-pocket jeans in rigid cotton denim. Baggy fit from seat to hem with plenty of room around legs. Regular waist, zip fly, and dropped gusset. Rounded legs, stacked at ankle. It's denim perfection.",
      productLength: " Long",
      productFit: "Loose fit",
      category: Category.casual,
    ),
  ];
  // list of products
  List<ProductModel> _cart = [];
  List<ProductModel> _wishlist = [];

  List<ProductModel> get shop => _shop;
  List<ProductModel> get wishlist => _wishlist;
  List<ProductModel> get cart => _cart;

  int _count = 0;
  int get count {
    print(_count);
    return _count;
  }

  void addToCart(ProductModel item) {
    _cart.add(item);
    notifyListeners();
  }

  void increment() {
    _count = _count + 1;

    notifyListeners();
  }

  void decrement() {
    _count = _count - 1;
    notifyListeners();
  }

  void addToWishlist(ProductModel item) {
    // _wishlist.add(item);
    final isExist = _wishlist.contains(item);
    if (isExist) {
      _wishlist.remove(item);
    } else {
      _wishlist.add(item);
    }
    notifyListeners();
  }

  bool isExist(ProductModel item) {
    final isExist = _wishlist.contains(item);
    return isExist;
  }

  void removeFromCart(ProductModel item) {
    _cart.remove(item);
    notifyListeners();
  }
}
