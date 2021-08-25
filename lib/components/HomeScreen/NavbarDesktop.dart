import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:leo_ife/components/HomeScreen/NabarBtn.dart';
import 'package:leo_ife/constants/constants.dart';
import 'package:leo_ife/constants/size_config.dart';
import 'package:leo_ife/data/MyStore.dart';
import 'package:leo_ife/screens/aboutUs.dart';
import 'package:leo_ife/screens/cartScreen.dart';
import 'package:leo_ife/screens/helpScreen.dart';
import 'package:leo_ife/screens/home-screen.dart';
import 'package:leo_ife/widgets/CustomTitleText.dart';
import 'package:leo_ife/widgets/RoundedIconBtn.dart';
import 'package:provider/provider.dart';

class Navbar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
           NavbarBtn(function: (){
             Navigator.pushNamed(context, HomeScreen.screenId,);
           },
           text: "Home",),
            SizedBox(width: 100.0),
            NavbarBtn(function: (){
              Navigator.pushNamed(context, AboutusScreen.screenId,);
            },
              text: "About",),

            SizedBox(width: 100.0),
            NavbarBtn(function: (){
              Navigator.pushNamed(context, HelpScreen.screenId,);
            },
              text: "Contact",),
            SizedBox(
              width: getProportionateScreenWidth(235.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Stack(
                    children:[
                      Padding(
                        padding: EdgeInsets.all(2),
                        child: RoundedIconBtn(
                          icon: Icons.add_shopping_cart,
                          color: Colors.grey[50],
                          function: (){
                            Navigator.pushNamed(context, CartScreen.screenId);
                          },
                        ),
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          height: getProportionateScreenHeight(17.0),
                          width: getProportionateScreenWidth(6.0),
                          decoration: BoxDecoration(
                              color: red,
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Consumer<MyStore>(
                                builder: (context,myStore,child){
                                  return CustomTitle(
                                    text: myStore.count.toString(),
                                    color: white,
                                    size: 10,
                                    fontWeight: FontWeight.w600,


                                  );
                                }

                            ),
                          ),
                        ),
                      ),
                    ]
                ),
                SizedBox(
                  width: getProportionateScreenWidth(5.0),
                ),
                Stack(
                  children: <Widget>[
                    RoundedIconBtn(
                      icon: Icons.notifications_none,
                      color: Colors.grey[50],
                      function: (){
                        // Navigator.pushNamed(context, CartScreen.cartId);
                      },
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        height: getProportionateScreenHeight(17.0),
                        width: getProportionateScreenWidth(6.0),
                        decoration: BoxDecoration(
                            color: red,
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: CustomTitle(
                            text: "2",
                            color: white,
                            size: 10,
                            fontWeight: FontWeight.w600,


                          ),
                        ),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}
