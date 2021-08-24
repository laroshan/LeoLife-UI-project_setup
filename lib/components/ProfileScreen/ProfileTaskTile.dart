import 'package:flutter/material.dart';
import 'package:leo_ife/screens/signInScreen.dart';


class ProfileTaskTile extends StatelessWidget {
  final IconData icons;
  final String title;
  final String route;


  ProfileTaskTile({@required this.icons, @required this.title, this.route});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Container(
        height: 80,
        width: 30,
        decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: ListTile(
              title: Text(
                  title
              ),
              leading: Icon(
                  icons
              ),
              trailing: Icon(
                  Icons.arrow_forward
              ),
              onTap: ()=>{
                Navigator.pushNamed(context, route??SignInScreen.screenId)
              },
              //contentPadding: EdgeInsets.only(right: 10, left: 10),

            ),
          ),
        ),
      ),
    );
  }
}
