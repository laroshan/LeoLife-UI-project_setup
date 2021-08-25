import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:leo_ife/components/BottomBar.dart';
import 'package:leo_ife/components/HomeScreen/Categories.dart';
import 'package:leo_ife/components/HomeScreen/FeaturedProducts.dart';
import 'package:leo_ife/components/HomeScreen/NavbarDesktop.dart';
import 'package:leo_ife/components/HomeScreen/PopularProduct.dart';
import 'package:leo_ife/components/HomeScreenDesktop/BottomBarDesktop.dart';
import 'package:leo_ife/constants/ReponsiveLayout.dart';
import 'package:leo_ife/constants/constants.dart';
import 'package:leo_ife/constants/size_config.dart';
import 'package:leo_ife/data/MyStore.dart';
import 'package:leo_ife/widgets/CustomTitleText.dart';
import 'package:leo_ife/widgets/RoundedIconBtn.dart';

import 'package:provider/provider.dart';

import 'cartScreen.dart';

class HomeScreen extends StatefulWidget {

 static String screenId="home_screen";
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        backgroundColor: white,

        body: Responsive(
          mobile: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 5,right: 8,left: 8,top: 18),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: getProportionateScreenHeight(55.0),
                        decoration: BoxDecoration(
                            color: Colors.grey[50],
                            boxShadow: [
                              BoxShadow(
                                  color: grey[300], offset: Offset(1, 1), blurRadius: 4)
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: Center(
                          child: ListTile(
                            leading: Icon(
                              Icons.search,
                              color: red,
                            ),
                            title: TextField(
                              decoration: InputDecoration(
                                  hintText: "Search Your Product",
                                  border: InputBorder.none),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(10.0),
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
                              top: -0.5,
                              right: 0,
                              child: Container(
                                height: getProportionateScreenHeight(18.0),
                                width: getProportionateScreenWidth(18.0),
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
                          width: getProportionateScreenWidth(10.0),
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
                                height: getProportionateScreenHeight(15.0),
                                width: getProportionateScreenWidth(15.0),
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
              SizedBox(
                height: getProportionateScreenHeight(15.0),
              ),
              Categories(),
              SizedBox(
                height: getProportionateScreenHeight(4.0),
              ),
              Padding(
                  padding: EdgeInsets.only(right: 10,left: 10,top:5),
                  child: CustomTitle(
                    text: "Featured Products",
                    size: 25,
                    color: black,
                    fontWeight: FontWeight.w200,
                  )),
              SizedBox(
                height: 1,
              ),
              Featured_Product(),
              SizedBox(height: 1,),
              Padding(
                padding: EdgeInsets.all(5),
                child: CustomTitle(
                  text: "Popular Products",
                  color: black,
                  size: 22,
                  fontWeight: FontWeight.w200,
                ),
              ),
              PopularProduct(),

            ],

          ),
          tablet: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 5,right: 8,left: 8,top: 18),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: getProportionateScreenHeight(55.0),
                        decoration: BoxDecoration(
                            color: Colors.grey[50],
                            boxShadow: [
                              BoxShadow(
                                  color: grey[300], offset: Offset(1, 1), blurRadius: 4)
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: Center(
                          child: ListTile(
                            leading: Icon(
                              Icons.search,
                              color: red,
                            ),
                            title: TextField(
                              decoration: InputDecoration(
                                  hintText: "Search Your Product",
                                  border: InputBorder.none),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(10.0),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        RoundedIconBtn(
                          icon: Icons.add_shopping_cart,
                          color: Colors.grey[50],
                          function: (){
                            Navigator.pushNamed(context, CartScreen.screenId);
                          },
                        ),
                        SizedBox(
                          width: getProportionateScreenWidth(10.0),
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
                                height: getProportionateScreenHeight(15.0),
                                width: getProportionateScreenWidth(15.0),
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
              SizedBox(
                height: getProportionateScreenHeight(15.0),
              ),
              Categories(),
              SizedBox(
                height: getProportionateScreenHeight(4.0),
              ),
              Padding(
                  padding: EdgeInsets.only(right: 10,left: 10,top:5),
                  child: CustomTitle(
                    text: "Featured Products",
                    size: 25,
                    color: black,
                    fontWeight: FontWeight.w200,
                  )),
              SizedBox(
                height: 1,
              ),
              Featured_Product(),
              SizedBox(height: 1,),
              Padding(
                padding: EdgeInsets.all(5),
                child: CustomTitle(
                  text: "Popular Products",
                  color: black,
                  size: 22,
                  fontWeight: FontWeight.w200,
                ),
              ),
              PopularProduct(),

            ],

          ),

          desktop: ListView(
            children: <Widget>[
              Navbar(),
              Padding(
                padding: EdgeInsets.only(bottom: 5,right: 8,left: 8,top: 18),
                child: Row(
                  children: <Widget>[

                    Expanded(
                      child: Container(
                        height: getProportionateScreenHeight(55.0),
                        decoration: BoxDecoration(
                            color: Colors.grey[50],
                            boxShadow: [
                              BoxShadow(
                                  color: grey[300], offset: Offset(1, 1), blurRadius: 4)
                            ],
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        child: Center(
                          child: ListTile(
                            leading: Icon(
                              Icons.search,
                              color: red,
                            ),
                            title: TextField(
                              decoration: InputDecoration(
                                  hintText: "Search Your Product",
                                  border: InputBorder.none),
                            ),
                          ),
                        ),
                      ),
                    ),


                  ],

                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(15.0),
              ),
              // Categories(),
              SizedBox(
                height: getProportionateScreenHeight(4.0),
              ),
              Padding(
                  padding: EdgeInsets.only(right: 10,left: 10,top:5),
                  child: CustomTitle(
                    text: "Featured Products",
                    size: 25,
                    color: black,
                    fontWeight: FontWeight.w200,
                  )),
              SizedBox(
                height: 1,
              ),
              Featured_Product(),
              SizedBox(height: 1,),
              Padding(
                padding: EdgeInsets.all(5),
                child: CustomTitle(
                  text: "Popular Products",
                  color: black,
                  size: 22,
                  fontWeight: FontWeight.w200,
                ),
              ),
              PopularProduct(),

            ],

          ),
        ),
        bottomNavigationBar: Responsive(mobile: BottomBar(),
        tablet: BottomBar(),
        desktop: BottomBarDesktop(),
    ),
      ),
    );
  }
}



