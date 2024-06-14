import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:urban_gents_app/features/cartpage/cart_page.dart';
import 'package:urban_gents_app/features/profilepage/profile_page.dart';

class HeaderPage extends StatelessWidget {
  const HeaderPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfilePage()),
                    );
                  },
                  child: CircleAvatar(
                    radius: 22,
                    foregroundImage: NetworkImage(
                        "https://imgs.search.brave.com/E1Rq2YNGCi0XZS51C1o_jMH-DxGR-WGFyShipKOcun4/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvMTM2/NTU2MTYyMi9waG90/by9oYW5kc29tZS15/b3VuZy1tYW4td2Vh/cmluZy13aGl0ZS1z/d2VhdHNoaXJ0Lmpw/Zz9zPTYxMng2MTIm/dz0wJms9MjAmYz1Y/TXpBZElyNjdGQVNI/bkxSamFIVFpUWDRo/MTNEbVJGaTR2Ym1G/Z0djd1JVPQ"),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi, Bayu",
                      style: GoogleFonts.poppins(color: Colors.white),
                    ),
                    Text(
                      "Ship to Nepal >",
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.grey.shade700,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Colors.grey.shade700,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CartPage(),
                      ),
                    );
                  },
                  child: Icon(
                    Icons.shopping_bag,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
