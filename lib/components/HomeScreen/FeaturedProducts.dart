import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



import 'package:leo_ife/constants/constants.dart';
import 'package:leo_ife/constants/size_config.dart';
import 'package:leo_ife/data/MyStore.dart';
import 'package:leo_ife/data/ProductList.dart';
import 'package:leo_ife/screens/ProductDetailScreen.dart';
import 'package:provider/provider.dart';
import '../../widgets/CustomTitleText.dart';

// ignore: camel_case_types, must_be_immutable
class Featured_Product extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8, left: 8, top: 1, bottom: 1),
      child: Container(
        height: getProportionateScreenHeight(250.0),
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Consumer<MyStore>(
            builder: (context, myStore,child){
             return ListView.builder(
                itemCount: myStore.productList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  return Padding(
                    padding: EdgeInsets.all(7),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                            context, ProductDetailScreen.productScreenId,
                            arguments: productList[index]);

                      },
                      child: (Container(
                        height: getProportionateScreenHeight(200.0),
                        width: getProportionateScreenHeight(230.0),
                        decoration: BoxDecoration(color: white, boxShadow: [
                          BoxShadow(
                              color: Colors.red[100],
                              offset: Offset(3, 5),
                              blurRadius: 4)
                        ]),
                        child: Padding(
                          padding: EdgeInsets.all(3),
                          child: Column(children: <Widget>[
                            Padding(
                                padding: EdgeInsets.all(5),
                                child: Image.asset(
                                  myStore.productList[index].images[0],
                                  width: getProportionateScreenWidth(155.0),
                                  height: getProportionateScreenHeight(130.0),
                                )),
                            SizedBox(
                              height: getProportionateScreenHeight(3.0),
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                              child: Padding(
                                padding: EdgeInsets.all(3),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Padding(
                                      padding: EdgeInsets.only(left: 4),
                                      child: CustomTitle(
                                        text: myStore.productList[index].name,
                                        size: 17,
                                        fontWeight: FontWeight.w400,
                                        color: black,
                                      ),
                                    ),
                                    Icon(
                                      myStore.productList[index].wishList
                                          ? Icons.favorite_border
                                          : Icons.favorite,
                                      size: 17,
                                      color: red,
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: getProportionateScreenHeight(2.0),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Padding(
                                        padding: EdgeInsets.only(left: 4),
                                        child: CustomTitle(
                                          text:
                                          myStore.productList[index].rating.toString(),
                                          color: grey,
                                          fontWeight: FontWeight.w400,
                                          size: 14,
                                        )),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 14,
                                      color: red,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 14,
                                      color: red,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 14,
                                      color: red,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 14,
                                      color: red,
                                    ),
                                    Icon(
                                      Icons.star_border,
                                      size: 14,
                                      color: red,
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(right: 6),
                                  child: CustomTitle(
                                    text: "Rs.${myStore.productList[index].price}",
                                    size: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            )
                          ]),
                        ),
                      )),
                    ),
                  );
                },
              );
            }

          ),
        ),
      ),
    );
  }
}
