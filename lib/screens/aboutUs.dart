import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:leo_ife/components/CircleAvatar.dart';
import 'package:leo_ife/constants/constants.dart';
import 'package:leo_ife/constants/size_config.dart';

import 'package:leo_ife/widgets/SocialIconBtn.dart';

class AboutusScreen extends StatelessWidget {
  static String screenId= "/about_us_screen";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "About Us",
            style: TextStyle(
              color: Colors.black45
            ),

          ),
          centerTitle: true,
          backgroundColor: white,
          leading: IconButton(
            icon:  Icon(
              Icons.arrow_back,
            ),
          color: Colors.black45,
          onPressed: (){
              Navigator.pop(context);
        },
          ),
          elevation: 0,
          actions: [
          ],
          
        ),

        body: Container(
          decoration: BoxDecoration(
            color: white,

          ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
             Center(child : AvatarImage(img: "assets/images/LeoLife.png",)),
                SizedBox(
                  height: getProportionateScreenHeight(30),
                ),
                Text(
                  'LD Leo Life',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.w700,color: gold1),
                ),

                Text(
                  'Home Care Products',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 15,
                      color:Colors.black45),

                ),
                SizedBox(
                  height: getProportionateScreenHeight(20),
                ),
                Text(
                  "N0.14, Circular Road,\n Hatton.\n  0512225770 \n 0773462913",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 1.4
                  ),
                ),
                SizedBox(
                  height: getProportionateScreenHeight(80),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SocialIconBtn(
                      icon: FontAwesomeIcons.facebook,
                    ),

                    SocialIconBtn(
                      icon: FontAwesomeIcons.whatsapp
                    ),
                    SocialIconBtn(
                      icon: FontAwesomeIcons.instagram,
                    )
                  ],
                )
              ],
            )
        ),
      ),
    );
  }
}
