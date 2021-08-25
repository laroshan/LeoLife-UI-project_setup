import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:leo_ife/constants/constants.dart';
import 'package:leo_ife/constants/size_config.dart';
import 'package:leo_ife/data/MyStore.dart';
import 'package:leo_ife/screens/cartScreen.dart';
import 'package:provider/provider.dart';


import '../../widgets/CustomTitleText.dart';
class CarouselImageViewer extends StatelessWidget {
        final List<String> images;
        final int index;

        CarouselImageViewer({this.images,this.index});

        @override
  Widget build(BuildContext context) {
          return Consumer<MyStore>(
              builder: (context,store,child)
          {
            return Padding(
              padding: EdgeInsets.all(6),
              child: Stack(children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 22),
                  child: Container(
                    height: getProportionateScreenHeight(270.0),
                    child: Carousel(
                      images:
                      List.generate(images.length, (index) {
                        return Image.asset(images[index]);
                      })
                      //  images.map((e) => Image.asset(e))


                      ,
                      dotBgColor: Colors.transparent,
                      dotColor: grey,
                      dotSize: 5,
                      dotIncreasedColor: red,
                      autoplay: false,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Stack(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.shopping_basket,
                            size: 30,
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, CartScreen.cartId);
                          },
                        ),
                        Positioned(
                          top: 24,
                          left: 25,
                          child: Container(
                              height: getProportionateScreenHeight(19.0),
                              width: getProportionateScreenHeight(19.0),
                              decoration: BoxDecoration(
                                  color: white,
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                                  boxShadow: [
                                    BoxShadow(
                                        color: grey,
                                        offset: Offset(2, 3),
                                        blurRadius: 4)
                                  ]),
                              child: Center(
                                child: CustomTitle(
                                  text: store.count.toString(),
                                  size: 16,
                                  color: black,
                                ),
                              )),
                        ),
                      ],
                    )
                  ],
                ),
                Positioned(
                  top: 230,
                  left: 330,
                  right: 10,
                  child: Container(
                    height: getProportionateScreenHeight(35.0),
                    decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: grey, offset: Offset(2, 3), blurRadius: 4)
                        ]),
                    child: IconButton(
                      icon: Icon(
                        store.productList[index].wishList?Icons.favorite:Icons.favorite_border_outlined,
                        color: red,
                        size: 18,
                      ),
                      onPressed: () {

                      },
                    ),
                  ),
                )
              ]),
            );
          }
          );
  }
}

