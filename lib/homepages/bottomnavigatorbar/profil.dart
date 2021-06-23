import 'package:flutter/material.dart';
import 'package:flutter_app/homepages/drawer/signup.dart';
import '../bulmamlazim.dart';
class ProfilPage extends StatefulWidget{
  ProfilState createState()=> ProfilState();
}
class ProfilState extends State<ProfilPage>with SingleTickerProviderStateMixin{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: SafeArea(
          child: Column(children: [
            Image.asset("images/bulmamlazim.jpg"),
            ElevatedButton(child:
            Text("Giriş Yap"),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFEF7532),
              ),
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => BulmamLazim()),);
              },),
            ElevatedButton(child:
            Text("Hesap oluştur"),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFEF7532),
              ),
              onPressed: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SignUp()),);},),
          ],)
      ),
    );
  }
}

