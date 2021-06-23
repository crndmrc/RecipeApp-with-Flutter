import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/homepages/drawer/signup.dart';

import '../bulmamlazim.dart';

class Account extends StatefulWidget{
  Accountpage createState()=> Accountpage();
}
class Accountpage extends State<Account>{
  String username,password;
  final snackBar = SnackBar(
    content: Text("Başarılı bir şekilde giriş yapıldı"),
    action: SnackBarAction(
      label: 'Kapat',
      onPressed: (){
        print("Kapatıldı");
      },
    ),
  );
  @override
  Widget build(BuildContext context){
      return MaterialApp(
        home: Scaffold(
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
          body: ListView(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            children: <Widget>[
              SizedBox(height: 15.0),
              Image.asset("images/bulmamlazim.jpg"),
              Padding (
                padding: const EdgeInsets.all(8.0),
                child:TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Email giriniz:',
                  ),
                  keyboardType: TextInputType.text,
                  inputFormatters: [
                    FilteringTextInputFormatter.singleLineFormatter
                  ],
                ),
              ),
              Padding (
                padding: const EdgeInsets.all(8.0),
                child:TextFormField(
                  decoration: const InputDecoration(
                    hintText: 'Şifre giriniz:',
                  ),
                  keyboardType: TextInputType.text,
                  inputFormatters: [
                    FilteringTextInputFormatter.singleLineFormatter
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  MaterialButton(
                    child: Text("Hala üye değil misiniz?"),
                    onPressed: () {
                      Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUp()),);
                    },),
                ],
              ),
              ElevatedButton(child:
              Text("Giriş Yap"),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFEF7532),
                ),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BulmamLazim()),);
                },),
            ],
          ),
        ),
      );
  }
}