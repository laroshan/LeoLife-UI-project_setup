import 'package:flutter/material.dart';
import 'package:leo_ife/constants/constants.dart';
import 'package:leo_ife/constants/size_config.dart';
import 'package:leo_ife/data/MyStore.dart';
import 'package:leo_ife/widgets/RoundedBorderContainer.dart';
import 'package:provider/provider.dart';

class CartTile extends StatelessWidget {
  final int index;


  CartTile({this.index});

  @override
  Widget build(BuildContext context) {
    var store= Provider.of<MyStore>(context,listen: false);
    return Dismissible(
      key: Key(index.toString()),

      background: Container(
        decoration: BoxDecoration(
            color: Colors.red[50],
            borderRadius: BorderRadius.all(Radius.circular(10))
        ),

        child: Row(
          children: <Widget>[
            Spacer(),
            Padding(
              padding: EdgeInsets.all(5),
              child: Icon(
                Icons.delete_forever,
                size: 35,
                color: Colors.red[100],
              ),
            )
          ],
        ),

      ),
      direction: DismissDirection.endToStart,
      onDismissed: (dismissDirection){
        try{
          store.deductCartTotal((store.cartList[index].price*store.cartList[index].count).toDouble());
    store.removeCart(index);

    }
        catch(e)
    {
      print(e);
      print("error");
    }
      },
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            // boxShadow: [
            //   BoxShadow(
            //     color: grey,
            //     offset: Offset(0,0),
            //     blurRadius: 2
            //   )
            // ]
          ),
          child: Row(
            children: <Widget>[
              RoundedBorderContainer(
                color: Colors.grey[200],
                widget: Padding(
                  padding: EdgeInsets.all(10),
                  child: Image.asset(store.cartList[index].images[0],
                    height: getProportionateScreenHeight(72.0),
                    width: getProportionateScreenWidth(72.0),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20,top: 2,bottom: 2),
                child: RichText(
                  text: TextSpan(
                      children: [
                        TextSpan(
                            text: "${store.cartList[index].name} \n",
                            style: TextStyle(
                                color: black,
                                fontSize: 19,
                                fontWeight: FontWeight.w400
                            )
                        ),
                        TextSpan(
                            text: "${store.cartList[index].quantity} \n\n",
                            style: TextStyle(
                                fontWeight: FontWeight.w300,
                                color: black,
                                fontSize: 14
                            )
                        ),
                        TextSpan(
                            text: "${store.cartList[index].price}.Rs  ",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.deepOrange,
                                fontWeight: FontWeight.w500
                            )
                        ),
                        TextSpan(
                            text: "x${store.cartList[index].count}",
                            style: TextStyle(
                                color: grey,
                                fontWeight: FontWeight.w400,
                                fontSize: 13
                            )
                        )
                      ]
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
