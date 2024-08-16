import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class Logo extends StatelessWidget {
  const Logo({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const Text(
        "Muhamad Faheem",
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
          color: CustomColor.myblue,
        ),
      ),
    );
  }
}
