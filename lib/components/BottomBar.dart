import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:leo_ife/constants/constants.dart';
import 'package:leo_ife/screens/cartScreen.dart';
import 'package:leo_ife/screens/home-screen.dart';
import 'package:leo_ife/screens/profileScreen.dart';
import 'package:leo_ife/widgets/PlainIconBtn.dart';

class BottomBar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2),
      child: Container(
        decoration: BoxDecoration(
          color: white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(25), topLeft: Radius.circular(25)),
          boxShadow: [
            BoxShadow(
              color: grey,
              blurRadius: 4,
              offset: Offset(2,3)
            )
          ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            PlainIconButton(icon: Icons.home,route: HomeScreen.homeId,),
            PlainIconButton(icon: Icons.category,route: HomeScreen.homeId,),
            PlainIconButton(icon: Icons.add_shopping_cart,route: CartScreen.cartId,),
            PlainIconButton(icon: Icons.person,route: ProfileScreen.profileScreenId,),




          ],
        ),
      ),
    );
  }
}


