
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:leo_ife/constants/ReponsiveLayout.dart';
import 'package:leo_ife/constants/constants.dart';
import 'package:leo_ife/constants/size_config.dart';
import 'package:leo_ife/screens/signInScreen.dart';
import 'package:leo_ife/widgets/BoxedTextBtn.dart';
import 'package:leo_ife/widgets/CustomTitleText.dart';
import 'package:leo_ife/widgets/TextFieldSign.dart';

import 'home-screen.dart';


class SignUpScreen extends StatelessWidget {
 static String screenId="/signup_screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        mobile: Scaffold(
          appBar: AppBar(
            backgroundColor: white,
            elevation: 0,
            centerTitle: true,
            title: CustomTitle(
              text: "Sign Up",
              size: 18,
              fontWeight: FontWeight.w400,
              color: black,
            ),
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back
              ),
              color: black,
              onPressed: ()=>{
                Navigator.pop(context)
              },
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: getProportionateScreenHeight(40.0),
                      ),
                      CustomTitle(
                        text: "Register Account",
                        color: black,
                        fontWeight: FontWeight.w700,
                        size: 25,
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(20.0),
                      ),
                      CustomTitle(
                        text: "Complete your details below",
                        size: 15,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey[500],
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(30.0),
                      ),
                      TextFieldSign(
                        icon: Icons.email,
                        subject: "email",
                        isPassword: false,
                        isEmail: true,
                        hint: "Enter your email",

                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(20.0),
                      ),
                      TextFieldSign(
                        icon: Icons.lock_outline,
                        subject: "Password",
                        isPassword: true,
                        isEmail: false,
                        hint: "Enter your password",

                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(20.0),
                      ),
                      TextFieldSign(
                        icon: Icons.lock_outline,
                        subject: "Confirm Password",
                        isPassword: true,
                        isEmail: false,
                        hint: "Re-enter your password",
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(40.0),
                      ),
                      BoxedTextBtn(
                        text: "Sign Up",
                        function: ()=>{
                          Navigator.pushReplacementNamed(context, HomeScreen.screenId)
                        },
                        textColor: white,
                        boxColor: Colors.deepOrange[600],
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(22.0),
                      ),
                      CustomTitle(
                        text: "By Signing Up you confirm that you agree \n          with our terms and conditions.",
                        color: Colors.grey[500],
                        fontWeight: FontWeight.w400,
                        size: 14,
                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(60.0),
                      ),

                      RichText(
                        text: TextSpan(
                            children:<InlineSpan> [
                              TextSpan(
                                  text: "Do you have an account already?  ",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    color: Colors.grey[600],

                                  )
                              ),
                              TextSpan(
                                text: "Sign In",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Colors.deepOrange[600],

                                ),

                                recognizer: TapGestureRecognizer()..onTap = () {
                                  Navigator.pushNamed(context, SignInScreen.screenId);
                                },

                              ),
                            ]
                        ),
                      )

                    ],
              ),
            ),
          ),
        ),
        tablet: Scaffold(
          appBar: AppBar(
            backgroundColor: white,
            elevation: 0,
            centerTitle: true,
            title: CustomTitle(
              text: "Sign Up",
              size: 18,
              fontWeight: FontWeight.w400,
              color: black,
            ),
            leading: IconButton(
              icon: Icon(
                  Icons.arrow_back
              ),
              color: black,
              onPressed: ()=>{
                Navigator.pop(context)
              },
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: getProportionateScreenHeight(40.0),
                  ),
                  CustomTitle(
                    text: "Register Account",
                    color: black,
                    fontWeight: FontWeight.w700,
                    size: 25,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(20.0),
                  ),
                  CustomTitle(
                    text: "Complete your details below",
                    size: 15,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[500],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(30.0),
                  ),
                  TextFieldSign(
                    icon: Icons.email,
                    subject: "email",
                    isPassword: false,
                    isEmail: true,
                    hint: "Enter your email",

                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(20.0),
                  ),
                  TextFieldSign(
                    icon: Icons.lock_outline,
                    subject: "Password",
                    isPassword: true,
                    isEmail: false,
                    hint: "Enter your password",

                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(20.0),
                  ),
                  TextFieldSign(
                    icon: Icons.lock_outline,
                    subject: "Confirm Password",
                    isPassword: true,
                    isEmail: false,
                    hint: "Re-enter your password",
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(40.0),
                  ),
                  BoxedTextBtn(
                    text: "Sign Up",
                    function: ()=>{
                      Navigator.pushReplacementNamed(context, HomeScreen.screenId)
                    },
                    textColor: white,
                    boxColor: Colors.deepOrange[600],
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(22.0),
                  ),
                  CustomTitle(
                    text: "By Signing Up you confirm that you agree \n          with our terms and conditions.",
                    color: Colors.grey[500],
                    fontWeight: FontWeight.w400,
                    size: 14,
                  ),
                  SizedBox(
                    height: getProportionateScreenHeight(60.0),
                  ),

                  RichText(
                    text: TextSpan(
                        children:<InlineSpan> [
                          TextSpan(
                              text: "Do you have an account already?  ",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Colors.grey[600],

                              )
                          ),
                          TextSpan(
                            text: "Sign In",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Colors.deepOrange[600],

                            ),

                            recognizer: TapGestureRecognizer()..onTap = () {
                              Navigator.pushNamed(context, SignInScreen.screenId);
                            },

                          ),
                        ]
                    ),
                  )

                ],
              ),
            ),
          ),
        ),
        desktop: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: getProportionateScreenHeight(40.0),
                ),
                CustomTitle(
                  text: "Register Account",
                  color: black,
                  fontWeight: FontWeight.w700,
                  size: 35,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(20.0),
                ),
                CustomTitle(
                  text: "Complete your details below",
                  size: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[500],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(35.0),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(300, 10, 300, 20),
                  child: Column(
                    children: [
                      TextFieldSign(
                        icon: Icons.email,
                        subject: "email",
                        isPassword: false,
                        isEmail: true,
                        hint: "Enter your email",

                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(20.0),
                      ),
                      TextFieldSign(
                        icon: Icons.lock_outline,
                        subject: "Password",
                        isPassword: true,
                        isEmail: false,
                        hint: "Enter your password",

                      ),
                      SizedBox(
                        height: getProportionateScreenHeight(20.0),
                      ),
                      TextFieldSign(
                        icon: Icons.lock_outline,
                        subject: "Confirm Password",
                        isPassword: true,
                        isEmail: false,
                        hint: "Re-enter your password",
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: getProportionateScreenHeight(40.0),
                ),
                BoxedTextBtn(
                  text: "Sign Up",
                  function: ()=>{
                    Navigator.pushReplacementNamed(context, HomeScreen.screenId)
                  },
                  textColor: white,
                  boxColor: Colors.deepOrange[600],
                ),
                SizedBox(
                  height: getProportionateScreenHeight(22.0),
                ),
                CustomTitle(
                  text: "By Signing Up you confirm that you agree \n          with our terms and conditions.",
                  color: Colors.grey[500],
                  fontWeight: FontWeight.w400,
                  size: 14,
                ),
                SizedBox(
                  height: getProportionateScreenHeight(60.0),
                ),

                RichText(
                  text: TextSpan(
                      children:<InlineSpan> [
                        TextSpan(
                            text: "Do you have an account already?  ",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 25,
                              color: Colors.grey[600],

                            )
                        ),
                        TextSpan(
                          text: "Sign In",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 25,
                            color: Colors.deepOrange[600],

                          ),

                          recognizer: TapGestureRecognizer()..onTap = () {
                            Navigator.pushNamed(context, SignInScreen.screenId);
                          },

                        ),
                      ]
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
