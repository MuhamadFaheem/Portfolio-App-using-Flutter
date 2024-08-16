import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/utils/certif_utils.dart';
import 'package:my_portfolio/widgets/certif_image.dart';

class CertifCardWidget extends StatelessWidget {
  const CertifCardWidget({
    super.key,
    required this.certif,
  });

  final CertifUtils certif;
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 290,
      width: 260,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColor.bgLight2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) => FullImageDialog(
                  imageUrl: certif.img,
                ),
              );
            },
            child: Image.asset(
              certif.img,
              height: 150,
              width: 260,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(
              12,
              15,
              12,
              12,
            ),
            child: Text(
              certif.title,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: CustomColor.whitePrimary,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(
              12,
              0,
              12,
              12,
            ),
            child: Text(
              certif.subtitle,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 12,
                color: CustomColor.whiteSecondary,
              ),
            ),
          ),
          const Spacer(),
          //footer
          Container(
            color: CustomColor.scaffoldBg,
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 8,
            ),
            child: Row(
              children: [
                const Text(
                  "Obtained date: ",
                  style: TextStyle(
                    color: CustomColor.myblue,
                    fontSize: 12,
                  ),
                ),
                const Spacer(),
                Text(
                  certif.obtainDate,
                  style: const TextStyle(
                    fontSize: 12,
                    color: CustomColor.whiteSecondary,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
