import 'package:flutter/material.dart';
import 'package:leo_ife/constants/constants.dart';




class RoundedIconBtn extends StatelessWidget {
  final Color color;

  final Function function;
  final IconData icon;


  RoundedIconBtn({this.color, @required this.function, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width:40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: grey,
            blurRadius: 4,
            offset: Offset(1,2)
          )
        ]
      ),
      child: Center(
        child: FlatButton(
          onPressed: function,
          padding: EdgeInsets.zero,
          color: color,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          child: Icon(
            icon
          ),
        ),
      )
    );
  }
}
