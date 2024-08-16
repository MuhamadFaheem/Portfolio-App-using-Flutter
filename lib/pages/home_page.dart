import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_portfolio/constants/colors.dart';
import 'package:my_portfolio/constants/size.dart';
import 'package:my_portfolio/widgets/certif_section.dart';
import 'package:my_portfolio/widgets/contact_section.dart';
import 'package:my_portfolio/widgets/drawer_mobile.dart';
import 'package:my_portfolio/widgets/footer.dart';
import 'package:my_portfolio/widgets/header_dekstop.dart';
import 'package:my_portfolio/widgets/header_mobile.dart';
import 'package:my_portfolio/widgets/main_dekstop.dart';
import 'package:my_portfolio/widgets/main_mobile.dart';
import 'package:my_portfolio/widgets/projects_section.dart';
import 'package:my_portfolio/widgets/skills_dekstop.dart';
import 'package:my_portfolio/widgets/skills_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final scrollController = ScrollController();
  final List<GlobalKey> navbarKeys = List.generate(5, (index) => GlobalKey());

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        key: scaffoldKey,
        endDrawer: constraints.maxWidth >= minDekstopWidth
            ? null
            : DrawerMobile(onNavItemTap: (int navIndex) {
                scaffoldKey.currentState?.closeEndDrawer();
                jumptToSection(navIndex);
              }),
        backgroundColor: CustomColor.scaffoldBg,
        body: SingleChildScrollView(
          controller: scrollController,
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                key: navbarKeys.first,
              ),
              //Main
              if (constraints.maxWidth >= minDekstopWidth)
                HeaderDekstop(onNavMenuTap: (int navIndex) {
                  jumptToSection(navIndex);
                })
              else
                HeaderMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),
              if (constraints.maxWidth >= minDekstopWidth)
                MainDekstop(
                  onContactButtonPressed: () {
                    jumptToSection(4); // Scroll to the Contact section
                  },
                )
              else
                MainMobile(
                  onContactButtonPressed: () {
                    jumptToSection(4); // Scroll to the Contact section
                  },
                ),

              //Skills
              Container(
                key: navbarKeys[1],
                width: double.maxFinite,
                color: CustomColor.bgLight1,
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    //title
                    const Text(
                      "What I can do",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: CustomColor.whitePrimary),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    //platform and skills
                    if (constraints.maxWidth >= medDekstopWidth)
                      const SkillsDekstop()
                    else
                      const SkillsMobile()
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),

              //Projects
              ProjectsSection(
                key: navbarKeys[2],
              ),
              const SizedBox(
                height: 30,
              ),
              //Contact

              CertifSection(
                key: navbarKeys[3],
              ),
              const SizedBox(
                height: 30,
              ),
              ContactSection(
                key: navbarKeys[4],
              ),
              const SizedBox(
                height: 30,
              ),
              //Footer
              const Footer(),
            ],
          ),
        ),
      );
    });
  }

  void jumptToSection(int navIndex) {
    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
