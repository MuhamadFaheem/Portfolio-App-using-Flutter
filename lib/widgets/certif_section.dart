import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/utils/certif_utils.dart';
import 'package:my_portfolio/widgets/certif_card.dart';

class CertifSection extends StatelessWidget {
  const CertifSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: CustomColor.bgLight1,
      width: screenWidth,
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        children: [
          //BackEnd project title
          const Text(
            "My Certificates",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary),
          ),
          const SizedBox(
            height: 50,
          ),
          //backend project card
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (int i = 0; i < myCertif.length; i++)
                  CertifCardWidget(
                    certif: myCertif[i],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

