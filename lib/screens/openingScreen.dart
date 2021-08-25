import 'package:flutter/material.dart';
import 'package:leo_ife/constants/ReponsiveLayout.dart';


import 'landingScreen.dart';


class OpeningScreen extends StatelessWidget {
  static String screenId="/opening_screen";


  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: Responsive(
          mobile: LandingScreen(),
          tablet: LandingScreen(),
          desktop: LandingScreen(),
        ),

      ),
    );
  }
}
