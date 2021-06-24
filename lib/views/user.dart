import 'package:flutter/material.dart';
import 'package:flutter_app/views/alisverisSepeti.dart';
import 'home_page.dart';
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Kullanıcı Bilgileri',
          style: TextStyle(
            fontFamily:'Varela',
            fontSize: 42.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SafeArea(
          child: Column(children: [
            Image.network('https://picsum.photos/250?image=9'),
            ElevatedButton(child:
            Text("Oturumu Kapat"),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFEF7532),
              ),
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomePage()),);
              },),
            GestureDetector(
              child: Image.asset("images/sepet.png",width: 50,height: 50,),
              onLongPress: (){Tooltip(
                message: ("Alışveris Sepeti"),
              );},
              onDoubleTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>AlisverisSepetiPage()),);
                Text("Alışveris Sepeti");
              },
            ),
            GestureDetector(
              child: Icon(Icons.date_range,color:Color(0xFF545D68)),
              onLongPress: (){Tooltip(
                message: ("En son ne yedim?"),
              );},
              onDoubleTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>AlisverisSepetiPage()),);
                Text("En son ne yedim?");
              },
            ),
          ],)
      ),
    );
  }
}