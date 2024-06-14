import 'package:flutter/material.dart';

class MySquareTile extends StatefulWidget {
  final String imagePath;
  const MySquareTile({super.key, required this.imagePath});

  @override
  State<MySquareTile> createState() => _MySquareTileState();
}

class _MySquareTileState extends State<MySquareTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: NetworkImage(
            widget.imagePath,
          ),
          fit: BoxFit.contain,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
