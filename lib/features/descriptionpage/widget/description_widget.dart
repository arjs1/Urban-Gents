import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DescriptionWidget extends StatelessWidget {
  final String title;
  final String titledescription;
  const DescriptionWidget(
      {super.key, required this.title, required this.titledescription});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          titledescription,
          style: GoogleFonts.poppins(
            letterSpacing: 0.5,
          ),
        ),
      ],
    );
  }
}
