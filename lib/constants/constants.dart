import 'package:flutter/material.dart';

//colors used in this app
const Color black = Colors.black;
const Color white = Colors.white;
const Color red = Color.fromRGBO(202, 31, 61, 1.0);
const Color brown = Color.fromRGBO(40, 13, 16, 1.0);
const Color yellow = Color(0xFFFFC107);
const   grey= Colors.grey;
const Color gold=Color(0xffEBBE5C);

const Color gold1=Color(0xffCBA048);

Color grey100 = Colors.grey.shade100;
Color blackOpacity = Colors.black.withOpacity(0.075);
Color greenOpacity = Colors.green.withOpacity(0.65);
Color grey600 = Colors.grey.shade600;



//default app padding
const double  appPadding = 30.0;




BoxDecoration nMbox = BoxDecoration(
    shape: BoxShape.circle,
    color: grey100,
    boxShadow: [
      BoxShadow(
        color: blackOpacity,
        offset: Offset(10, 10),
        blurRadius: 10,
      ),
      BoxShadow(
        color: white,
        offset: Offset(-10, -10),
        blurRadius: 10,
      ),
    ]
);

BoxDecoration nMboxInvert = BoxDecoration(
    borderRadius: BorderRadius.circular(15),
    color: blackOpacity,
    boxShadow: [
      BoxShadow(
          color: white,
          offset: Offset(3, 3),
          blurRadius: 3,
          spreadRadius: -3
      ),
    ]
);