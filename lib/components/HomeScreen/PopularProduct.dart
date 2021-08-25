import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:leo_ife/constants/ReponsiveLayout.dart';
import 'package:leo_ife/constants/constants.dart';
import 'package:leo_ife/constants/size_config.dart';


import '../../widgets/CustomTitleText.dart';
class PopularProduct extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: Padding(
        padding: EdgeInsets.all(6),
        child: Container(
          child: Stack(

            children: <Widget>[
              ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  child: Image.asset("assets/images/freshners/Aer (2).jpg",)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Icon(
                      Icons.favorite,
                      size: 25,
                      color: red,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Container(
                      height: getProportionateScreenHeight(27.0),
                      width: getProportionateScreenWidth(60.0),
                      decoration: BoxDecoration
                        (
                          color: white,
                          borderRadius: BorderRadius.all(Radius.circular(4))
                      ),
                      child: Row(
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.only(left: 3),
                              child: Icon(Icons.star,color: red,size: 18,)),
                          Padding(
                              padding: EdgeInsets.only(left: 3,right: 3),
                              child: CustomTitle(text: "4.5",size: 18,color: black,))
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Positioned(
                top: 160,
                right: 10,
                left: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(

                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(7),
                        child: Column(
                          children: <Widget>[
                            CustomTitle(
                              text: "Aer Products",
                              color: black,
                              fontWeight: FontWeight.w500,
                            ),
                            RichText(
                              text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: "By: ",
                                        style: TextStyle(
                                            color: grey

                                        )
                                    ),
                                    TextSpan(
                                        text: "Aer",
                                        style: TextStyle(
                                            color: black
                                        )
                                    )
                                  ]
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    // Container(
                    //   decoration: BoxDecoration(
                    //       color: Colors.grey[100],
                    //       borderRadius: BorderRadius.all(Radius.circular(10))
                    //   ),
                    //   child: Padding(
                    //     padding: EdgeInsets.all(7),
                    //     child: CustomTitle(
                    //       text: "Rs.120.00",
                    //       color: black,
                    //       fontWeight: FontWeight.w700,
                    //     ),
                    //   ),
                    // )
                  ],
                ),
              )
            ],

          ),
        ),
      ),
      tablet: Padding(
        padding: EdgeInsets.all(6),
        child: Container(
          child: Stack(

            children: <Widget>[
              ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  child: Image.asset("assets/images/freshners/Aer (2).jpg",)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Icon(
                      Icons.favorite,
                      size: 25,
                      color: red,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Container(
                      height: getProportionateScreenHeight(27.0),
                      width: getProportionateScreenWidth(60.0),
                      decoration: BoxDecoration
                        (
                          color: white,
                          borderRadius: BorderRadius.all(Radius.circular(4))
                      ),
                      child: Row(
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.only(left: 3),
                              child: Icon(Icons.star,color: red,size: 18,)),
                          Padding(
                              padding: EdgeInsets.only(left: 3,right: 3),
                              child: CustomTitle(text: "4.5",size: 18,color: black,))
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Positioned(
                top: 160,
                right: 10,
                left: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(

                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(7),
                        child: Column(
                          children: <Widget>[
                            CustomTitle(
                              text: "Aer Products",
                              color: black,
                              fontWeight: FontWeight.w500,
                            ),
                            RichText(
                              text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: "By: ",
                                        style: TextStyle(
                                            color: grey

                                        )
                                    ),
                                    TextSpan(
                                        text: "Aer",
                                        style: TextStyle(
                                            color: black
                                        )
                                    )
                                  ]
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    // Container(
                    //   decoration: BoxDecoration(
                    //       color: Colors.grey[100],
                    //       borderRadius: BorderRadius.all(Radius.circular(10))
                    //   ),
                    //   child: Padding(
                    //     padding: EdgeInsets.all(7),
                    //     child: CustomTitle(
                    //       text: "Rs.120.00",
                    //       color: black,
                    //       fontWeight: FontWeight.w700,
                    //     ),
                    //   ),
                    // )
                  ],
                ),
              )
            ],

          ),
        ),
      ),
      desktop: Padding(
        padding: EdgeInsets.all(6),
        child: Container(
          child: Stack(

            children: <Widget>[
              ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  child: Image.asset("assets/images/freshners/Aer (2).jpg",)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Icon(
                      Icons.favorite,
                      size: 35,
                      color: red,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8),
                    child: Container(
                      height: getProportionateScreenHeight(37.0),
                      width: getProportionateScreenWidth(18.0),
                      decoration: BoxDecoration
                        (
                          color: white,
                          borderRadius: BorderRadius.all(Radius.circular(4))
                      ),
                      child: Row(
                        children: <Widget>[
                          Padding(
                              padding: EdgeInsets.only(left: 5),
                              child: Icon(Icons.star,color: red,size: 18,)),
                          Padding(
                              padding: EdgeInsets.only(left: 3,right: 3),
                              child: CustomTitle(text: "4.5",size: 18,color: black,))
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Positioned(
                top: 770,
                right: 10,
                left: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(

                      decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(7),
                        child: Column(
                          children: <Widget>[
                            CustomTitle(
                              text: "Aer Products",
                              color: black,
                              fontWeight: FontWeight.w500,
                              size: 40,
                            ),
                            RichText(
                              text: TextSpan(
                                  children: [
                                    TextSpan(
                                        text: "By: ",
                                        style: TextStyle(
                                            color: grey,
                                          fontSize: 20,

                                        )
                                    ),
                                    TextSpan(
                                        text: "Aer",
                                        style: TextStyle(
                                            color: black,
                                          fontSize: 20
                                        )
                                    )
                                  ]
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    // Container(
                    //   decoration: BoxDecoration(
                    //       color: Colors.grey[100],
                    //       borderRadius: BorderRadius.all(Radius.circular(10))
                    //   ),
                    //   child: Padding(
                    //     padding: EdgeInsets.all(7),
                    //     child: CustomTitle(
                    //       text: "Rs.120.00",
                    //       color: black,
                    //       fontWeight: FontWeight.w700,
                    //     ),
                    //   ),
                    // )
                  ],
                ),
              )
            ],

          ),
        ),
      ),
    );



  }
}


