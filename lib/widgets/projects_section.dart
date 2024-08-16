import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/utils/project_utils.dart';
import 'package:my_portfolio/widgets/project_card.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      padding: EdgeInsets.fromLTRB(25, 20, 25, 60),
      child: Column(
        children: [
          //BackEnd project title
          const Text(
            "Back End Projects",
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
                for (int i = 0; i < beProjectUtils.length; i++)
                  ProjectCardWidget(
                    projects: beProjectUtils[i],
                  ),
              ],
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          //Frontend
          const Text(
            "Front End Projects",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary),
          ),
          const SizedBox(
            height: 50,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (int i = 0; i < feProjectUtils.length; i++)
                  ProjectCardWidget(
                    projects: feProjectUtils[i],
                  ),
              ],
            ),
          ),
          //FullStack
          const SizedBox(
            height: 80,
          ),
          const Text(
            "Full Stack Projects",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary),
          ),
          const SizedBox(
            height: 50,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (int i = 0; i < fsProjectUtils.length; i++)
                  ProjectCardWidget(
                    projects: fsProjectUtils[i],
                  ),
              ],
            ),
          ),
          //mobile
          const SizedBox(
            height: 80,
          ),

          const Text(
            "Mobile Projects",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: CustomColor.whitePrimary),
          ),
          const SizedBox(
            height: 50,
          ),

          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: Wrap(
              spacing: 25,
              runSpacing: 25,
              children: [
                for (int i = 0; i < mProjectUtils.length; i++)
                  ProjectCardWidget(
                    projects: mProjectUtils[i],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
