import 'package:flutter/material.dart';

import 'package:leo_ife/constants/ReponsiveLayout.dart';
import 'package:leo_ife/constants/constants.dart';
import 'package:leo_ife/constants/size_config.dart';
import 'package:leo_ife/screens/signInScreen.dart';
import 'package:leo_ife/widgets/BoxedTextBtn.dart';
import 'package:leo_ife/widgets/CustomTitleText.dart';

class LandingScreen extends StatelessWidget {
  static String screenId = "/landing_screen";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: Responsive(
          mobile: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: getProportionateScreenHeight(40.0),
                ),

                // CustomTitle(

                //   text: "LD Leo Life",

                //   size: 40,

                //   fontWeight: FontWeight.w900,

                //   color: gold1,

                // ),

                Text(
                  "LD Leo Life",
                  style: TextStyle(
                    color: gold1,
                    fontSize: 40,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                  ),
                ),

                SizedBox(
                  height: getProportionateScreenHeight(20.0),
                ),

                CustomTitle(
                  text:
                      "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t Welcome to LD Leo Life. \n  For your every kind of home care product needs. \n                                   Let's shop!",
                  color: Colors.grey[500],
                  fontWeight: FontWeight.w600,
                  size: 15,
                ),

                SizedBox(
                  height: getProportionateScreenHeight(10.0),
                ),

                Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Image.asset(
                        "assets/images/LeoLife2.png",
                      )),
                ),

                SizedBox(
                  height: getProportionateScreenHeight(40.0),
                ),

                BoxedTextBtn(
                  text: "Continue",
                  boxColor: Colors.deepOrange,
                  textColor: Colors.white,
                  function: () => {
                    Navigator.pushReplacementNamed(
                        context, SignInScreen.screenId)
                  },
                )
              ],
            ),
          ),
          tablet: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: getProportionateScreenHeight(40.0),
                ),

                // CustomTitle(

                //   text: "LD Leo Life",

                //   size: 40,

                //   fontWeight: FontWeight.w900,

                //   color: gold1,

                // ),

                Text(
                  "LD Leo Life",
                  style: TextStyle(
                    color: gold1,
                    fontSize: 40,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                  ),
                ),

                SizedBox(
                  height: getProportionateScreenHeight(20.0),
                ),

                CustomTitle(
                  text:
                      "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t Welcome to LD Leo Life. \n  For your every kind of home care product needs. \n                                   Let's shop!",
                  color: Colors.grey[500],
                  fontWeight: FontWeight.w600,
                  size: 15,
                ),

                SizedBox(
                  height: getProportionateScreenHeight(10.0),
                ),

                Container(
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Padding(
                      padding: EdgeInsets.all(20),
                      child: Image.asset(
                        "assets/images/LeoLife2.png",
                      )),
                ),

                SizedBox(
                  height: getProportionateScreenHeight(40.0),
                ),

                BoxedTextBtn(
                  text: "Continue",
                  boxColor: Colors.deepOrange,
                  textColor: Colors.white,
                  function: () => {
                    Navigator.pushReplacementNamed(
                        context, SignInScreen.screenId)
                  },
                )
              ],
            ),
          ),
          desktop: SignInScreen(),
        ),
      ),
    );
  }
}
