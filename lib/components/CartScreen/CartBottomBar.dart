import 'package:flutter/material.dart';
import 'package:leo_ife/constants/constants.dart';
import 'package:leo_ife/constants/size_config.dart';
import 'package:leo_ife/data/MyStore.dart';
import 'package:leo_ife/widgets/BoxedTextBtn.dart';
import 'package:provider/provider.dart';

class CartBottomBar extends StatefulWidget {

  @override
  _CartBottomBarState createState() => _CartBottomBarState();
}

class _CartBottomBarState extends State<CartBottomBar> {
  @override
  Widget build(BuildContext context) {


    return Consumer<MyStore>(
        builder: (context,myStore,child)
    {
      return Padding(
        padding: EdgeInsets.only(left: 2, right: 2),
        child: Container(
          height: getProportionateScreenHeight(86.0),
          decoration: BoxDecoration(
            color: white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                  color: grey,
                  offset: Offset(2, 3),
                  blurRadius: 4
              )
            ],

          ),
          child: Column(
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                            children: [
                              TextSpan(
                                text: "Total: \n",
                                style: TextStyle(
                                  color: grey,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                  text: myStore.cartTotal.toString(),
                                  style: TextStyle(
                                      fontSize: 19,
                                      color: black,
                                      fontWeight: FontWeight.w500

                                  )
                              )
                            ]
                        ),
                      ),
                      BoxedTextBtn(
                        text: "Check Out",
                        function: () =>
                        {
                        },
                        textColor: white,
                        boxColor: Colors.deepOrange,
                      )
                    ],
                  )

              ),

            ],
          ),
        ),
      );
    }
    );
  }
}

