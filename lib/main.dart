import 'package:flutter/material.dart';
import 'package:leo_ife/screens/ProductDetailScreen.dart';
import 'package:leo_ife/screens/cartScreen.dart';
import 'package:leo_ife/screens/home-screen.dart';
import 'package:leo_ife/screens/landingScreen.dart';
import 'package:leo_ife/screens/openingScreen.dart';
import 'package:leo_ife/screens/profileScreen.dart';
import 'package:leo_ife/screens/signInScreen.dart';
import 'package:leo_ife/screens/signUpScreen.dart';

import 'package:provider/provider.dart';

import 'data/MyStore.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MyStore>(
      create: (context) => MyStore(),
      child: MaterialApp(

        debugShowCheckedModeBanner: false,
        title: 'LD Leo Life',
  initialRoute: OpeningScreen.id,
        theme: ThemeData(
          primarySwatch: Colors.red,
          fontFamily: 'Montserrat'
        ),


      routes: {
          HomeScreen.homeId:(context)=>HomeScreen(),
        ProductDetailScreen.productScreenId:(context)=> ProductDetailScreen(),
        ProfileScreen.profileScreenId:(context)=> ProfileScreen(),
        CartScreen.cartId:(context)=> CartScreen(),
        SignInScreen.screenId: (context)=> SignInScreen(),
        SignUpScreen.screenId: (context)=> SignUpScreen(),
        LandingScreen.screenId: (context)=>LandingScreen(),
        OpeningScreen.id:(context)=>OpeningScreen()
      },


      ),
    );

  }
}
