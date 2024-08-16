import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/utils/project_utils.dart';
import 'dart:js' as js;

class ProjectCardWidget extends StatelessWidget {
  const ProjectCardWidget({
    super.key,
    required this.projects,
  });

  final ProjectUtils projects;
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      height: 180,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: CustomColor.bgLight2,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(
              12,
              15,
              12,
              12,
            ),
            child: Text(
              projects.title,
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
              projects.subtitle,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 14,
                color: CustomColor.whiteSecondary,
              ),
            ),
          ),
          const Spacer(),
          //footer
          Container(
            color: CustomColor.bgLight1,
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 10,
            ),
            child: Row(
              children: [
                const Text(
                  "Visit project: ",
                  style: TextStyle(
                    color: CustomColor.myblue,
                    fontSize: 13,
                  ),
                ),
                const Spacer(),
                if (projects.githubLink != null)
                  InkWell(
                    onTap: () {
                      js.context.callMethod("open", [projects.githubLink]);
                    },
                    child: Image.asset(
                      "images/social/github.png",
                      width: 19,
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
