import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:leo_ife/components/BottomBar.dart';
import 'package:leo_ife/components/ProfileScreen/ProfileTiles.dart';
import 'package:leo_ife/constants/constants.dart';
import 'package:leo_ife/widgets/CustomTitleText.dart';

import 'home-screen.dart';


class ProfileScreen extends StatelessWidget {
  static String screenId = "profile_screen";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: black,
          ),
          onPressed: (){
            Navigator.pushReplacementNamed(context, HomeScreen.screenId);
          },
        ),
        elevation: 0,
      ),
        body: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: <Widget>[
              CustomTitle(
                text: "Profile",
                size: 20,
                color: black,
                fontWeight: FontWeight.w400,
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Stack(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage("assets/images/pexels.jpeg"),
                      radius: 60,
                    ),
                    Positioned(
                      top: 85,
                      right: 5,

                      child: Container(
                        decoration: BoxDecoration(
                          color: white,
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(6),
                          child: Icon(
                            Icons.camera_alt,
                            color: grey,
                          ),
                        ),
                      ),
                    )
                  ],

                ),
              ),
              SizedBox(
                height: 10,
              ),
              ProfileTiles()
            ],

          ),
        ),
          bottomNavigationBar: BottomBar(),
      ),

    );
  }
}

