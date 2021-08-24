import 'package:flutter/material.dart';
import 'package:leo_ife/constants/constants.dart';



import 'CustomTitleText.dart';

class TextFieldSign extends StatelessWidget {

  final String hint;
  final String subject;
  final IconData icon;
  final String value;
  final bool isPassword;
  final bool isEmail;


  TextFieldSign({@required this.hint, @required this.subject, @required this.icon, this.value, @required this.isEmail, @required this.isPassword});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(6),
      child: Stack(
        overflow: Overflow.visible,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                color: white,
                border: Border.all(width: 1,
                    color: Colors.black54),
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[600],
                      offset: Offset(1,2),
                      blurRadius: 2
                  )
                ]
            ),
            child: Padding(
              padding: EdgeInsets.all(2),
              child: ListTile(
                trailing: Icon(
                    icon
                ),
                title: TextField(

                  decoration: InputDecoration(
                      hintText: hint,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none
                      )


                  ),
                  keyboardType: isEmail?TextInputType.emailAddress: TextInputType.text,
                  obscureText: isPassword,
                  onChanged: (newValue){
                    // value=newValue;

                  },



                ),
              ),
            ),
          ),
          Positioned(
            bottom: 52,
            left: 50,
            child: Container(
              height: 32,
              width: subject.length>8?150:80,
              decoration: BoxDecoration(
                  color: white
              ),
              child: Center(
                child: CustomTitle(
                  text: subject,
                  size: 16,
                  fontWeight: FontWeight.w400,
                  color: black,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
