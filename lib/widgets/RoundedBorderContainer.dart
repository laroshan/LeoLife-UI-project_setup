
import 'package:flutter/material.dart';
class RoundedBorderContainer extends StatelessWidget {
  final Color color;
  final Widget widget;


  RoundedBorderContainer({this.color, this.widget});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(6),
      child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(12),
            boxShadow:[
              BoxShadow(
                  color: Colors.grey[200],
                  offset: Offset(2,1),
                  blurRadius: 2
              )
            ],
          ),
          child: widget
      ),
    );
  }
}