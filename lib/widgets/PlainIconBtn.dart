import 'package:flutter/material.dart';
import 'package:leo_ife/screens/home-screen.dart';


class PlainIconButton extends StatelessWidget {
  final IconData icon;
  final String route;


  PlainIconButton({@required this.icon, this.route});

  @override
  Widget build(BuildContext context) {
    return IconButton(icon: Icon(icon,size: 33,color: Colors.blueGrey[300]),
      onPressed: (){
        Navigator.pushNamed(context, route??HomeScreen.screenId);
      },);
  }
}
