import 'package:flutter/material.dart';
import 'package:leo_ife/constants/constants.dart';
import 'package:leo_ife/constants/size_config.dart';


import 'CustomTitleText.dart';
class RoundedTextBtn extends StatelessWidget {
final String text;
final Function function;  final int isSelected;
final int index;


RoundedTextBtn({@required this.text, @required this.function, this.isSelected,this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(1),
      child: Container(
        width: getProportionateScreenWidth(75.0),
        decoration: BoxDecoration(
            color: Colors.greenAccent[500],
            border: Border.all(color: index==isSelected ?Colors.deepOrange[200]: Colors.transparent,
            style: BorderStyle.solid,
            width: 3),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                  color: grey,
                  offset: Offset(1,2),
                  blurRadius: 3
              )
            ]
        ),
        child: FloatingActionButton(
          onPressed: function,
         // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          //color: Colors.transparent,
          heroTag: text,
          isExtended: false,

          backgroundColor: Colors.greenAccent[400],
          child: Center(
            child: CustomTitle(
              text: text,
              color: white,
              size: 10,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}