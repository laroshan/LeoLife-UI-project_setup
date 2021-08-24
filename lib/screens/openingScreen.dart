import 'package:flutter/material.dart';
import 'package:leo_ife/constants/ReponsiveLayout.dart';
import 'package:leo_ife/screens/signUpScreen.dart';

import 'landingScreen.dart';


class OpeningScreen extends StatelessWidget {
  static String id="/opening_screen";


  @override
  Widget build(BuildContext context) {
    Size _size =MediaQuery.of(context).size;
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
