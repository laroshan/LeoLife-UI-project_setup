import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:leo_ife/components/CartScreen/CartBottomBar.dart';
import 'package:leo_ife/components/CartScreen/CartTile.dart';
import 'package:leo_ife/constants/constants.dart';
import 'package:leo_ife/data/MyStore.dart';

import 'package:provider/provider.dart';



class CartScreen extends StatefulWidget {
static String screenId= "/cart_screen";

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {

  @override
  Widget build(BuildContext context) {


    return Consumer<MyStore>(
        builder: (context,store,child)
    {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: RichText(
            text: TextSpan(
                children: [
                  TextSpan(text: "Your Cart \n", style: TextStyle(
                    fontSize: 20,
                    color: black,
                    fontWeight: FontWeight.w400,

                  ),
                  ),
                  TextSpan(
                      text: "       "+store.cartList.length.toString(),
                      style: TextStyle(
                          fontSize: 17,
                          color: black,
                          fontWeight: FontWeight.w300,


                      ),

                  ),
                ]
            ),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.white,
        ),
        body: ListView.builder(
            itemCount: store.count,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) =>
                Column(
                  children: <Widget>[
                    CartTile(index: index,),
                  ],
                )),
        bottomNavigationBar: CartBottomBar(),

      );
    }
    );
  }
}

