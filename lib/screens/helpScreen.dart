import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:leo_ife/constants/constants.dart';
import 'package:leo_ife/constants/size_config.dart';

class HelpScreen extends StatelessWidget {
static String screenId='help_screen';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: white,
          elevation: 0,
          title: Text(
            "Help & Support",style: TextStyle(
            color: Colors.black45,
            fontSize: 22
          ),
          ),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back
            ),
            onPressed: (){
              Navigator.pop(context);
            },
            color: Colors.black45,
          ),
        ),
        body: Container(
          child: Column(
            children: [
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  "What Kind Of Help You Need?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),


            ],
          ),
        ),

      ),
    );
  }
}
