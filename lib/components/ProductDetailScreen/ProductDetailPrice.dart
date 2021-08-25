import 'package:flutter/material.dart';
import 'package:leo_ife/constants/ReponsiveLayout.dart';
import 'package:leo_ife/constants/constants.dart';
import 'package:leo_ife/widgets/CustomTitleText.dart';

class ProductTitlePrice extends StatelessWidget {
 final String product;
 final String company;
 final int price;

 ProductTitlePrice({@required this.product, this.company, @required this.price});

  @override
  Widget build(BuildContext context) {
    return Responsive(mobile: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 20, top: 1),
          child: RichText(
            text: TextSpan(
              text: '$product \n',
              style: TextStyle(
                  color: black,
                  fontSize: 26,
                  fontWeight: FontWeight.w400,
                  height: 1.2
              ),
              children:  [
                TextSpan(
                    text: 'by: ',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: grey,
                        fontSize: 17)),

                TextSpan(
                    text: company,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: black,
                        fontSize: 17)),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: CustomTitle(
            text: "Rs.$price",
            color: black,
            fontWeight: FontWeight.w500,
            size: 20,
          ),
        )
      ],
    ),
        tablet: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 20, top: 1),
          child: RichText(
            text: TextSpan(
              text: '$product \n',
              style: TextStyle(
                  color: black,
                  fontSize: 26,
                  fontWeight: FontWeight.w400,
                  height: 1.2
              ),
              children:  [
                TextSpan(
                    text: 'by: ',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: grey,
                        fontSize: 17)),

                TextSpan(
                    text: company,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: black,
                        fontSize: 17)),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: CustomTitle(
            text: "Rs.$price",
            color: black,
            fontWeight: FontWeight.w500,
            size: 20,
          ),
        )
      ],
    ),
        desktop: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 30, top: 2,right: 10,bottom: 2),
          child: RichText(
            text: TextSpan(
              text: '$product \n',
              style: TextStyle(
                  color: black,
                  fontSize: 36,
                  fontWeight: FontWeight.w400,
                  height: 1.2
              ),
              children:  [
                TextSpan(
                    text: 'by: ',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: grey,
                        fontSize: 27)),

                TextSpan(
                    text: company,
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: black,
                        fontSize: 27)),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(30),
          child: CustomTitle(
            text: "Rs.$price",
            color: black,
            fontWeight: FontWeight.w500,
            size: 30,
          ),
        )
      ],
    ));

  }
}