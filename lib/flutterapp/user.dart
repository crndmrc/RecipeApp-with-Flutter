import 'package:flutter/material.dart';
import 'dart:math'as math;
import 'package:flutter_app/homepages/drawer/account.dart';
import 'package:flutter_app/views/alisverisSepeti.dart';
class User extends StatefulWidget{
  @override
  Userpage createState()=> Userpage();
}
class Userpage extends State<User>{
  var snackBar = SnackBar(
    content: Text("Oturum kapatıldı"),
    action: SnackBarAction(
      label: 'Kapat',
      onPressed: (){
        print("Kapatıldı");
      },
    ),
  );
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.white,
        elevation:0.0,
        centerTitle: true,
        title:Text("BulmamLazım.COM",
          style:TextStyle(fontFamily: 'Varela',fontSize: 20.0,color:Color(0xFF545068)),
        ),
        leading: IconButton(
          icon:Icon(Icons.arrow_back,color:Color(0xFF545D68)),
          onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context)=>Account()));
          },
        ),
        iconTheme: IconThemeData(color: Color(0xFF545068)),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.edit),color:Color(0xFF545068), onPressed:(){})
        ],
      ),
      body:Column(
        children: <Widget>[
      GestureDetector(
      child: Image.asset("images/sepet.png",width: 50,height: 50,),
      onLongPress: (){Tooltip(
        message: ("Alışveris Sepeti"),
      );},
      onDoubleTap: (){
        Navigator.push(context,
          MaterialPageRoute(builder: (context) =>AlisverisSepetiPage()),);
      },
    ),
      Text("Alışveris Sepeti"),
      Container(
        color: Colors.black,
          child: Transform(
          alignment: Alignment.topRight,
          transform: Matrix4.skewY(0.3)..rotateZ(-math.pi / 12.0),
            child: Container(
            padding: const EdgeInsets.all(8.0),
            color: const Color(0xFFE8581C),
              child: const Text('Apartment for rent!'),
      ),
      ),
      ),
        ],
      ),

    );
  }
}