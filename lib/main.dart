import 'package:flutter/material.dart';
import 'package:flutter_app/flutterapp/splashscreen.dart';

void main(){
  runApp(MaterialApp(
      title:"BulmamLazım.COM",
      debugShowCheckedModeBanner:false,
      theme:ThemeData(
        primarySwatch: Colors.orange,
      ),
    home:SplashScreenpage(),
  ));
}
