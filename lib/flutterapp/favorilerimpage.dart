import 'package:flutter/material.dart';
import 'package:flutter_app/homepages/bulmamlazim.dart';
class Favorilerimpage extends StatefulWidget{
  @override
  FavorilerimState createState()=> FavorilerimState();
}
class FavorilerimState extends State<Favorilerimpage>{
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
                MaterialPageRoute(builder: (context)=>BulmamLazim()));
          },
        ),
        iconTheme: IconThemeData(color: Color(0xFF545068)),
      ),
        body:ListView(
          padding: EdgeInsets.only(left: 20.0,right: 20.0),
        children: <Widget>[
          Text('Tariflerim',
            style: TextStyle(
              fontFamily:'Varela',
              fontSize: 42.0,
              fontWeight: FontWeight.bold,
            ),),
        ],
        ),
    );
  }
}