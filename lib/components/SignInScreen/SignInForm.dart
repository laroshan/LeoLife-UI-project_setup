import 'package:flutter/material.dart';
import 'package:leo_ife/constants/constants.dart';
import 'package:leo_ife/constants/size_config.dart';
import 'package:leo_ife/widgets/CustomTitleText.dart';
import 'package:leo_ife/widgets/TextFieldSign.dart';


class SignInForm extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          TextFieldSign(icon: Icons.email,
            hint: "Enter your email",
            isEmail: true,
            isPassword: false,
            subject: "Email",

          ),
          SizedBox(
            height: getProportionateScreenHeight(32.0),
          ),
          TextFieldSign(icon: Icons.lock_outline,
            hint: "Enter your password",
            isEmail: false,
            isPassword: true,
            subject: "Password",
          ),
          SizedBox(
            height: getProportionateScreenHeight(12.0),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 2, 10, 2),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: ListTile(
                    title: CustomTitle(
                      text: "Remember me",
                      color: Colors.grey[500],
                      fontWeight: FontWeight.w400,
                      size: 14,
                    ),
                    leading: Checkbox(value: false,
                      onChanged: (newValue){

                      },
                    ),
                  ),
                ),

                Text(
                  "forgot password",
                  style: TextStyle(
                      color: grey,
                      decoration: TextDecoration.underline,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(22.0),
          ),

        ],
      ),
    );
  }
}
