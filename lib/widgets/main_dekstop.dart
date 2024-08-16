import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

class MainDekstop extends StatelessWidget {
  const MainDekstop({super.key, required this.onContactButtonPressed});
  final VoidCallback onContactButtonPressed;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: screenHeight / 1.2,
      constraints: const BoxConstraints(
        minHeight: 350.0,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Hi! I'm Muhamad Faheem -",
                  style: TextStyle(
                      fontSize: 30,
                      height: 1.5,
                      fontWeight: FontWeight.w300,
                      color: CustomColor.whitePrimary),
                ),
                const Text(
                  "Full Stack Developer",
                  style: TextStyle(
                      color: Color.fromARGB(255, 132, 211, 255),
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  width: 250,
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
          ),
          Image.asset("images/me.png", width: screenWidth / 2),
        ],
      ),
    );
  }
}
