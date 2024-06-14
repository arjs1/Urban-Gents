import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});
  void signUserOut() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   leading: IconButton(
      //     onPressed: widget.signUserOut,
      //     icon: Icon(Icons.logout),
      //   ),
      // ),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          CircleAvatar(
            radius: 90,
            backgroundColor: Colors.grey,
          ),
          TextButton(
              onPressed: widget.signUserOut,
              child: Text(
                "Logout".toUpperCase(),
                style: GoogleFonts.poppins(
                  color: Colors.grey[700],
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1.0,
                ),
              ))
        ],
      ),
    );
  }
}
