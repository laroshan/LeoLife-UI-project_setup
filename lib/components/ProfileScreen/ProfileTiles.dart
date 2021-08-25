import 'package:flutter/material.dart';

import 'package:leo_ife/constants/size_config.dart';
import 'package:leo_ife/screens/aboutUs.dart';
import 'package:leo_ife/screens/helpScreen.dart';
import 'package:leo_ife/screens/signInScreen.dart';

import 'ProfileTaskTile.dart';


class ProfileTiles extends StatelessWidget {
  final List<ProfileTaskElement> elements=[
  ProfileTaskElement(icon: Icons.person,title: "My Account",route: ""),
    ProfileTaskElement(icon: Icons.notifications_none,title: "About Us",route: AboutusScreen.screenId),
    ProfileTaskElement(icon: Icons.settings,title: "Settings",route: ""),
    ProfileTaskElement(icon: Icons.help_outline,title: "Help",route: HelpScreen.screenId),
    ProfileTaskElement(icon: Icons.exit_to_app,title: "Log Out",route: SignInScreen.screenId),



  ];

  @override
  Widget build(BuildContext context) {

    return Container(
      height: getProportionateScreenHeight(515.0),
      child: ListView.builder(

        scrollDirection: Axis.vertical,
        itemCount: elements.length,

        itemBuilder: (context,index){
          return ProfileTaskTile(title: elements[index].title,icons: elements[index].icon,route: elements[index].route,);
        },

      ),
    );
  }
}

class ProfileTaskElement{
  String title;
  IconData icon;
  String route;

  ProfileTaskElement({this.title, this.icon,this.route});
}