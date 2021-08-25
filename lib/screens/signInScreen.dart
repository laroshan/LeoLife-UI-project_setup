import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:leo_ife/components/SignInScreen/SignInForm.dart';
import 'package:leo_ife/constants/ReponsiveLayout.dart';
import 'package:leo_ife/constants/constants.dart';
import 'package:leo_ife/constants/size_config.dart';
import 'package:leo_ife/screens/signUpScreen.dart';
import 'package:leo_ife/widgets/BoxedTextBtn.dart';
import 'package:leo_ife/widgets/CustomTitleText.dart';

import 'home-screen.dart';
import 'landingScreen.dart';

class SignInScreen extends StatelessWidget {
 static String screenId="/signIn-screen";

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: black,
            ),
onPressed: ()=>{
              Navigator.pushReplacementNamed(context, LandingScreen.screenId)

},

          ),
          title: CustomTitle(
            text: "Sign In",
            color: Colors.grey[600],
            fontWeight: FontWeight.w400,
            size: 18,
          ),
        ),
      body: SingleChildScrollView(
        child: Container(
         // height: double.infinity,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CustomTitle(
                  text: "Welcome back",
                  size: 30,
                  fontWeight: FontWeight.w800,
                  color: black,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(25.0),
                ),
                CustomTitle(
                  text: "Sign in with your user email and password",
                  color: Colors.grey[600],
                  fontWeight: FontWeight.w400,
                  size: 14,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(55.0),
                ),

                SignInForm(),
                BoxedTextBtn(
                  text: "Sign In",
                  boxColor: Colors.deepOrange[400],
                  textColor: white,
                  function: (){
                    Navigator.pushReplacementNamed(context, HomeScreen.screenId);
                  },
                ),
                SizedBox(
                  height: getProportionateScreenHeight(165.0),
                ),
                RichText(
                  text: TextSpan(
                    children:<InlineSpan> [
                      TextSpan(
                        text: "Don't have an account?  ",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                          color: Colors.grey[600],

                        )
                      ),
                      TextSpan(
                          text: "Sign Up",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 15,
                            color: Colors.deepOrange[600],

                          ),

                        recognizer: TapGestureRecognizer()..onTap = () {
                          Navigator.pushNamed(context, SignUpScreen.screenId);
                        },

                      ),
                    ]
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
      ),
      tablet: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: black,
            ),
            onPressed: ()=>{
              Navigator.pushReplacementNamed(context, LandingScreen.screenId)

            },

          ),
          title: CustomTitle(
            text: "Sign In",
            color: Colors.grey[600],
            fontWeight: FontWeight.w400,
            size: 18,
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            // height: double.infinity,
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  CustomTitle(
                    text: "Welcome back",
                    size: 30,
                    fontWeight: FontWeight.w800,
                    color: black,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(25.0),
                  ),
                  CustomTitle(
                    text: "Sign in with your user email and password",
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w400,
                    size: 14,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(55.0),
                  ),

                  SignInForm(),
                  BoxedTextBtn(
                    text: "Sign In",
                    boxColor: Colors.deepOrange[400],
                    textColor: white,
                    function: (){
                      Navigator.pushReplacementNamed(context, HomeScreen.screenId);
                    },
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(165.0),
                  ),
                  RichText(
                    text: TextSpan(
                        children:<InlineSpan> [
                          TextSpan(
                              text: "Don't have an account?  ",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Colors.grey[600],

                              )
                          ),
                          TextSpan(
                            text: "Sign Up",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Colors.deepOrange[600],

                            ),

                            recognizer: TapGestureRecognizer()..onTap = () {
                              Navigator.pushNamed(context, SignUpScreen.screenId);
                            },

                          ),
                        ]
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
      desktop: Scaffold(
        body: SingleChildScrollView(
          //physics: ScrollPhysic,
          child: Container(
            // height: double.infinity,
            child: Padding(
              padding: EdgeInsets.fromLTRB(300, 20, 300, 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  CustomTitle(
                    text: "Welcome back",
                    size: 40,
                    fontWeight: FontWeight.w800,
                    color: black,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(25.0),
                  ),
                  CustomTitle(
                    text: "Sign in with your user email and password",
                    color: Colors.grey[600],
                    fontWeight: FontWeight.w400,
                    size: 24,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(55.0),
                  ),

                  SignInForm(),
                  SizedBox(
                    height: getProportionateScreenHeight(45),
                  ),
                  BoxedTextBtn(
                    text: "Sign In",
                    boxColor: Colors.deepOrange[400],
                    textColor: white,
                    function: (){
                      Navigator.pushReplacementNamed(context, HomeScreen.screenId);
                    },
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(140.0),
                  ),
                  RichText(
                    text: TextSpan(
                        children:<InlineSpan> [
                          TextSpan(
                              text: "Don't have an account?  ",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 25,
                                color: Colors.grey[600],

                              )
                          ),
                          TextSpan(
                            text: "Sign Up",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 25,
                              color: Colors.deepOrange[600],

                            ),

                            recognizer: TapGestureRecognizer()..onTap = () {
                              Navigator.pushNamed(context, SignUpScreen.screenId);
                            },

                          ),
                        ]
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

