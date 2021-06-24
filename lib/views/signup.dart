import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'user.dart';

class SignUp extends StatefulWidget{
  SignUpPage createState()=> SignUpPage();
}
class SignUpPage extends State<SignUp> {
  String ad='';
  String soyad='';
  String telefon='';
  String email='';
  String sifre='';
  void kontrol(){
    var data=[];
    data.add(ad);
    data.add(soyad);
    data.add(telefon);
    data.add(email);
    data.add(sifre);
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    Navigator.push(context,MaterialPageRoute(builder: (context)=>User(),
    settings: RouteSettings(arguments: data,),
    ));
  }
  var snackBar = SnackBar(
    content: Text("Başarılı bir şekilde kayıt tamamlandı"),
    action: SnackBarAction(
      label: 'Kapat',
      onPressed: (){
        print("Kapatıldı");
      },
    ),
  );
  @override
  Widget build(BuildContext context) {
        void _adKaydet(String text){
      setState(() {
        ad=text;
      });
    }
        void _soyadKaydet(String text){
      setState(() {
        soyad=text;
      });
    }
        void _emailKaydet(String text){
      setState(() {
        email=text;
      });
    }
        void _telefonKaydet(String text){
      setState(() {
        telefon=text;
      });
    }
        void _sifreKaydet(String text){
      setState(() {
        sifre=text;
      });
    }
    return Scaffold(
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
          padding: EdgeInsets.only(left: 30.0,right: 30.0),
          children: <Widget>[
            Image.asset("images/bulmamlazim.jpg"),
            Padding (
              padding: const EdgeInsets.all(8.0),
              child:TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Ad',
                ),
                keyboardType: TextInputType.text,
                inputFormatters: [
                  FilteringTextInputFormatter.singleLineFormatter
                ],
                onChanged: (text){
                _adKaydet(text);
                },
              ),
            ),
            Padding (
              padding: const EdgeInsets.all(8.0),
              child:TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Soyad',
                ),
                onChanged: (text){
                _soyadKaydet(text);
                },
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
                  hintText: 'Telefon',
                ),
                onChanged: (text){
                _telefonKaydet(text);
                },
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.singleLineFormatter
                ],
              ),
            ),
              SizedBox(height: 10.0),
            Padding (
              padding: const EdgeInsets.all(8.0),
              child:TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Email',
                ),
                onChanged: (text){
                _emailKaydet(text);
                },
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
                  hintText: 'Şifre',
                ),
                onChanged: (text){
                _sifreKaydet(text);
                },
                obscureText: true,
                keyboardType: TextInputType.text,
                inputFormatters: [
                  FilteringTextInputFormatter.singleLineFormatter
                ],
              ),
            ),
            GestureDetector(
             child: ElevatedButton(child:
              Text("Kaydol"),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFEF7532),
                  ),
                  onPressed: () {
                    kontrol();
                  }
              ),
            ),
          ],
        )
    );
  }
}