import 'package:flutter/material.dart';
import 'views/splashscreen.dart';

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
