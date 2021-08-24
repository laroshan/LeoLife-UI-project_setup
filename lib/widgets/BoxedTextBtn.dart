import 'package:flutter/material.dart';
import 'package:leo_ife/constants/constants.dart';



import 'CustomTitleText.dart';

class BoxedTextBtn extends StatelessWidget {
  final Color boxColor;
  final Color textColor;
  final String text;
  final Function function;


  BoxedTextBtn({@required this.boxColor, @required this.textColor, @required this.text, @required this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        height: 48,
        width: 160,
        decoration: BoxDecoration(color: boxColor,
      borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: [
          BoxShadow(color: grey, offset: Offset(2, 1))
        ]),
        child: Center(
          child: CustomTitle(
            text: text,
            size: 20,
            fontWeight: FontWeight.w500,
            color: textColor,
          ),
        ),
      ),
    );
  }
}


