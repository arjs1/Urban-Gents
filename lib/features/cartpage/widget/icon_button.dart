import 'package:flutter/material.dart';

class QuantityButton extends StatelessWidget {
  final IconData? icon;
  final Function() onTap;
  const QuantityButton({super.key, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        height: 25,
        width: 25,
        decoration: BoxDecoration(
          color: Colors.grey.shade600,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Icon(
          icon,
          color: Colors.white,
          size: 15,
        ),
      ),
    );
  }
}
