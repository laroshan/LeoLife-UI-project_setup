import 'package:flutter/material.dart';

import 'package:leo_ife/constants/size_config.dart';

import 'ProfileTaskTile.dart';


class ProfileTiles extends StatelessWidget {
  List<ProfileTaskElement> elements=[
  ProfileTaskElement(icon: Icons.person,title: "My Account"),
    ProfileTaskElement(icon: Icons.notifications_none,title: "Notifications"),
    ProfileTaskElement(icon: Icons.settings,title: "Settings"),
    ProfileTaskElement(icon: Icons.help_outline,title: "Help"),
    ProfileTaskElement(icon: Icons.exit_to_app,title: "Log Out",),



  ];

  @override
  Widget build(BuildContext context) {

    return Container(
      height: getProportionateScreenHeight(515.0),
      child: ListView.builder(

        scrollDirection: Axis.vertical,
        itemCount: elements.length,

        itemBuilder: (context,index){
          return ProfileTaskTile(title: elements[index].title,icons: elements[index].icon,);
        },

      ),
    );
  }
}

class ProfileTaskElement{
  String title;
  IconData icon;

  ProfileTaskElement({this.title, this.icon});
}