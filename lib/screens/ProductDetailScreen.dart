import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:leo_ife/components/ProductDetailScreen/CarouselImageViewer.dart';
import 'package:leo_ife/components/ProductDetailScreen/ProductDetailPrice.dart';
import 'package:leo_ife/constants/ReponsiveLayout.dart';
import 'package:leo_ife/constants/constants.dart';
import 'package:leo_ife/constants/size_config.dart';
import 'package:leo_ife/data/MyStore.dart';
import 'package:leo_ife/models/cartProduct.dart';
import 'package:leo_ife/widgets/BoxedTextBtn.dart';
import 'package:leo_ife/widgets/CustomTitleText.dart';
import 'package:leo_ife/widgets/RoundedBorderContainer.dart';
import 'package:leo_ife/widgets/RoundedIconBtn.dart';
import 'package:leo_ife/widgets/RoundedTextBtn.dart';

import 'package:provider/provider.dart';


class ProductDetailScreen extends StatefulWidget {
  static String screenId = "product_screen";

  final int indexP;


  ProductDetailScreen({
  this.indexP
});

  @override
  _ProductDetailScreenState createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int count=1;
  int isIndex=0;
  @override

  @override
  Widget build(BuildContext context) {
   // final Product args = ModalRoute.of(context).settings.arguments;
    final int indexP=ModalRoute.of(context).settings.arguments;

var store=Provider.of<MyStore>(context,listen: false);
      return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        body: ListView(
          children: <Widget>[
            CarouselImageViewer(
              images: store.productList[indexP].images,
              index: indexP,
            ),
            SizedBox(
              height: getProportionateScreenHeight(10.0),
            ),
            ProductTitlePrice(
              price: store.productList[indexP].price,
              product: store.productList[indexP].name,
              company: store.productList[indexP].company,
            ),
            Responsive(
                mobile:  RoundedBorderContainer(
              color: Colors.grey[100],
              widget: Padding(
                padding: EdgeInsets.all(6),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(4),
                      child: CustomTitle(
                        text: "Description",
                        size: 20,
                        color: black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 6, left: 6, top: 6),
                      child: Container(
                        height: getProportionateScreenHeight(160.0),
                        child: CustomTitle(
                          text: store.productList[indexP].description ?? "",
                          color: black,
                          size: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),

                    Center(
                      child: RoundedBorderContainer(
                        color: Colors.grey[100],
                        widget: Padding(
                          padding: EdgeInsets.only(left: 5,right: 5,top: 3,bottom: 3),
                          child: Container(
                            height:getProportionateScreenHeight(80.0),
                            // width: getProportionateScreenHeight(80.0),
                            child: ListView.builder(itemBuilder: (context,index){
                              return Padding(
                                padding: EdgeInsets.only(right: 8,left: 8,top: 2,bottom: 2),
                                child: RoundedTextBtn(
                                  function: (){
                                    setState(() {
                                      isIndex=index;
                                    });
                                  },
                                  text:store.productList[indexP].quantities[index],
                                  isSelected: isIndex,
                                  index: index,
                                ),
                              );
                            },
                              itemCount: store.productList[indexP].quantities.length,
                              scrollDirection: Axis.horizontal,),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(25.0),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: getProportionateScreenWidth(32.0),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  RoundedIconBtn(
                                    icon: Icons.add,
                                    function: () {
                                      setState(() {
                                        count++;
                                      });

                                    },
                                    color: Colors.grey[100],
                                  ),
                                  SizedBox(
                                    width: getProportionateScreenWidth(10.0),
                                  ),
                                  Text(count.toString(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 25,
                                    ),),
                                  SizedBox(
                                    width: getProportionateScreenWidth(10.0),
                                  ),

                                  RoundedIconBtn(
                                    icon: Icons.remove,
                                    function: () {
                                      setState(() {
                                        if(count>1){
                                          count--;
                                        }

                                      });

                                    },
                                    color: Colors.grey[100],
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(
                              width: getProportionateScreenWidth(35.0),
                            ),
                            BoxedTextBtn(
                              text: "Add To Cart",
                              function: (){
                                try{
                                  CartProduct c=new CartProduct(
                                      count: count,
                                      company: store.productList[indexP].company,
                                      images: store.productList[indexP].images,
                                      name: store.productList[indexP].name,
                                      price: store.productList[indexP].price,
                                      quantity: store.productList[indexP].quantities[isIndex]

                                  );
                                  store.addCart(c);
                                  store.addCartTotal((store.productList[indexP].price*count).toDouble());

                                }
                                catch(e)
                                {
                                  print(e);
                                  print("error");
                                }
                              },
                              textColor: white,
                              boxColor: Colors.deepOrange[400],
                            )

                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(15.0),
                    ),
                  ],
                ),
              ),
            ),
                tablet:  RoundedBorderContainer(
              color: Colors.grey[100],
              widget: Padding(
                padding: EdgeInsets.all(6),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(4),
                      child: CustomTitle(
                        text: "Description",
                        size: 20,
                        color: black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 6, left: 6, top: 6),
                      child: Container(
                        height: getProportionateScreenHeight(160.0),
                        child: CustomTitle(
                          text: store.productList[indexP].description ?? "",
                          color: black,
                          size: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),

                    Center(
                      child: RoundedBorderContainer(
                        color: Colors.grey[100],
                        widget: Padding(
                          padding: EdgeInsets.only(left: 5,right: 5,top: 3,bottom: 3),
                          child: Container(
                            height:getProportionateScreenHeight(80.0),
                            // width: getProportionateScreenHeight(80.0),
                            child: ListView.builder(itemBuilder: (context,index){
                              return Padding(
                                padding: EdgeInsets.only(right: 8,left: 8,top: 2,bottom: 2),
                                child: RoundedTextBtn(
                                  function: (){
                                    setState(() {
                                      isIndex=index;
                                    });
                                  },
                                  text:store.productList[indexP].quantities[index],
                                  isSelected: isIndex,
                                  index: index,
                                ),
                              );
                            },
                              itemCount: store.productList[indexP].quantities.length,
                              scrollDirection: Axis.horizontal,),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(25.0),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            SizedBox(
                              width: getProportionateScreenWidth(32.0),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  RoundedIconBtn(
                                    icon: Icons.add,
                                    function: () {
                                      setState(() {
                                        count++;
                                      });

                                    },
                                    color: Colors.grey[100],
                                  ),
                                  SizedBox(
                                    width: getProportionateScreenWidth(10.0),
                                  ),
                                  Text(count.toString(),
                                    style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 25,
                                    ),),
                                  SizedBox(
                                    width: getProportionateScreenWidth(10.0),
                                  ),

                                  RoundedIconBtn(
                                    icon: Icons.remove,
                                    function: () {
                                      setState(() {
                                        if(count>1){
                                          count--;
                                        }

                                      });

                                    },
                                    color: Colors.grey[100],
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(
                              width: getProportionateScreenWidth(35.0),
                            ),
                            BoxedTextBtn(
                              text: "Add To Cart",
                              function: (){
                                try{
                                  CartProduct c=new CartProduct(
                                      count: count,
                                      company: store.productList[indexP].company,
                                      images: store.productList[indexP].images,
                                      name: store.productList[indexP].name,
                                      price: store.productList[indexP].price,
                                      quantity: store.productList[indexP].quantities[isIndex]

                                  );
                                  store.addCart(c);
                                  store.addCartTotal((store.productList[indexP].price*count).toDouble());

                                }
                                catch(e)
                                {
                                  print(e);
                                  print("error");
                                }
                              },
                              textColor: white,
                              boxColor: Colors.deepOrange[400],
                            )

                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(15.0),
                    ),
                  ],
                ),
              ),
            ),
                desktop:  RoundedBorderContainer(
              color: Colors.grey[100],
              widget: Padding(
                padding: EdgeInsets.all(6),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(4),
                      child: CustomTitle(
                        text: "Description",
                        size: 30,
                        color: black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 6, left: 6, top: 6),
                      child: Container(
                        height: getProportionateScreenHeight(160.0),
                        child: CustomTitle(
                          text: store.productList[indexP].description ?? "",
                          color: black,
                          size: 26,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),

                    RoundedBorderContainer(
                      color: Colors.grey[100],
                      widget: Padding(
                        padding: EdgeInsets.only(left:5,right: 5,top: 3,bottom: 3),
                        child: Center(
                          child: Row(
                            children: [
                              Container(
                                height:getProportionateScreenHeight(80.0),
                                width: getProportionateScreenWidth(200),
                                // width: getProportionateScreenHeight(80.0),
                                child: ListView.builder(itemBuilder: (context,index){
                                  return Padding(
                                    padding: EdgeInsets.only(right: 2,left: 2,top: 2,bottom: 2),
                                    child: RoundedTextBtn(
                                      function: (){
                                        setState(() {
                                          isIndex=index;
                                        });
                                      },
                                      text:store.productList[indexP].quantities[index],
                                      isSelected: isIndex,
                                      index: index,
                                      
                                    ),
                                  );
                                },
                                  itemCount: store.productList[indexP].quantities.length,
                                  scrollDirection: Axis.horizontal,),
                              ),
                              SizedBox(
                                width: getProportionateScreenWidth(20),
                              ),
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.center,
                                // crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    // mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      SizedBox(
                                        width: getProportionateScreenWidth(32.0),
                                      ),
                                      Container(
                                        child: Row(
                                          children: [
                                            RoundedIconBtn(
                                              icon: Icons.add,
                                              function: () {
                                                setState(() {
                                                  count++;
                                                });

                                              },
                                              color: Colors.grey[100],
                                            ),
                                            SizedBox(
                                              width: getProportionateScreenWidth(10.0),
                                            ),
                                            Text(count.toString(),
                                              style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 25,
                                              ),),
                                            SizedBox(
                                              width: getProportionateScreenWidth(10.0),
                                            ),

                                            RoundedIconBtn(
                                              icon: Icons.remove,
                                              function: () {
                                                setState(() {
                                                  if(count>1){
                                                    count--;
                                                  }

                                                });

                                              },
                                              color: Colors.grey[100],
                                            ),
                                          ],
                                        ),
                                      ),

                                      SizedBox(
                                        width: getProportionateScreenWidth(20.0),
                                      ),
                                      BoxedTextBtn(
                                        text: "Add To Cart",
                                        function: (){
                                          try{
                                            CartProduct c=new CartProduct(
                                                count: count,
                                                company: store.productList[indexP].company,
                                                images: store.productList[indexP].images,
                                                name: store.productList[indexP].name,
                                                price: store.productList[indexP].price,
                                                quantity: store.productList[indexP].quantities[isIndex]

                                            );
                                            store.addCart(c);
                                            store.addCartTotal((store.productList[indexP].price*count).toDouble());

                                          }
                                          catch(e)
                                          {
                                            print(e);
                                            print("error");
                                          }
                                        },
                                        textColor: white,
                                        boxColor: Colors.deepOrange[400],
                                      )

                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: getProportionateScreenHeight(25.0),
                    ),


                  ],
                ),
              ),
            )),

          ],
        ),
      ),
    );
  }
}
