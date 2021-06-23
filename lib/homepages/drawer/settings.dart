import 'package:flutter/material.dart';

class Settings extends StatefulWidget{
  SettingsPage createState()=> SettingsPage();
}
class SettingsPage extends State<Settings>{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          backgroundColor: Colors.white,
          elevation:0.0,
          centerTitle: true,
          leading: IconButton(
            icon:Icon(Icons.arrow_back,color:Color(0xFF545D68)),
            onPressed: (){
              Navigator.of(context).pop();
            },
          ),
          title:Text("BulmamLazım.COM",
            style:TextStyle(fontFamily: 'Varela',fontSize: 20.0,color:Color(0xFF545D68)),
          ),
        ),
        body:Column(
          children: <Widget>[
            Text('Ayarlar',
              style: TextStyle(
                fontFamily:'Varela',
                fontSize: 42.0,
                fontWeight: FontWeight.bold,
              ),),
          ],
      ),
      ),
    );
  }
}