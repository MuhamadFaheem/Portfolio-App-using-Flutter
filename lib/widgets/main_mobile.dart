import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key, required this.onContactButtonPressed});

  final VoidCallback onContactButtonPressed;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 30,
      ),
      height: screenHeight,
      constraints: BoxConstraints(
        minHeight: 560.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //image
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(
                colors: [
                  CustomColor.scaffoldBg.withOpacity(0.6),
                  CustomColor.scaffoldBg.withOpacity(0.6),
                ],
              ).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset(
              "images/me.png",
              width: screenWidth / 1.2,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          //text
          const Text(
            "Hi! I'm Muhamad Faheem -",
            style: TextStyle(
                fontSize: 26,
                height: 1.5,
                fontWeight: FontWeight.w500,
                color: CustomColor.whitePrimary),
          ),
          const Text(
            "Full Stack Developer",
            style: TextStyle(
              color: Color.fromARGB(255, 132, 211, 255),
              fontWeight: FontWeight.bold,
              fontSize: 26,
              height: 1.5,
            ),
          ),
          const SizedBox(
            height: 15,
          ),

          //btn
          SizedBox(
            width: 190,
            child: ElevatedButton(
                onPressed: onContactButtonPressed,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 132, 211, 255),
                ),
                child: const Text(
                  "Get in touch",
                  style: TextStyle(color: CustomColor.whitePrimary),
                )),
          )
        ],
      ),
    );
  }
}
