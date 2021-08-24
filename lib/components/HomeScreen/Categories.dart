import 'package:flutter/material.dart';
import 'package:leo_ife/constants/constants.dart';
import 'package:leo_ife/constants/size_config.dart';

import 'package:leo_ife/models/category.dart';


import '../../widgets/CustomTitleText.dart';

List<Category> category=[
Category("Sponges","assets/icons/Asset1.png"),
  Category("Brushes","assets/icons/Asset2.png"),
  Category("Soaps","assets/icons/Asset3.png"),
  Category("Liquids","assets/icons/Asset4.png"),
  Category("Buckets","assets/icons/Asset5.png"),
  Category("Gloves","assets/icons/Asset6.png"),
  Category("Liquids","assets/icons/Asset7.png"),
];
class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: getProportionateScreenHeight(85.0),
      child: ListView.builder(
        itemCount: category.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_,index){
          return Padding(
            padding: EdgeInsets.all(5),
            child: Column(
              children: <Widget>[
                Container(
                  height: getProportionateScreenHeight(55.0),
                  width: getProportionateScreenWidth(55.0),
                  decoration: BoxDecoration(
                      color: Colors.red[50],
                      boxShadow:[
                        BoxShadow(
                            offset:Offset(1,2),
                            color: grey,
                            blurRadius: 4
                        )
                      ]
                  ),
                  child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Image.asset(category[index].image,width: 30,height: 30,)),
                ),
                SizedBox(height: getProportionateScreenHeight(2.0),),
                CustomTitle(
                  text: category[index].name,
                  size: 12,
                  color: black,
                  fontWeight:FontWeight.normal,
                ),

              ],
            ),
          );
        },
      ),
    );
  }
}
