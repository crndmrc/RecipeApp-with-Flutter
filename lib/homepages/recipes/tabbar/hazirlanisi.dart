import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_app/services/dosyaislemi/file_utils.dart';
class HazirlanisPage extends StatefulWidget{
  State createState()=> HazirlanisState();
}
class HazirlanisState extends State<HazirlanisPage>{
  String _text = "";
  final _c = TextEditingController();
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body:Column(
        children: <Widget>[
          RichText(
            text: TextSpan(
              text: 'Tereyağını benmari düzeneğine alın. çikolataları ekleyin. tamamen erimelerini sağlayın.Ocaktan alıp şekeri ekleyin ve erimesini sağlayın. Yumurtaların her birini teker teker ekleyin. Unu ekleyip sadece karışana kadar karıştırın.Pişirme kağıdı serili 22 cm\'lik kelepçeli kek kalıbına harcı sıyırın. Önceden ısıtılmış 200 derecelik fırında 25 dakika kadar pişirin. Kürdan batırdığınızda bir miktar nemli olmalı. 15 dakika dinlendikten sonra dilimleyerek servis edebilirsiniz.',
              style: DefaultTextStyle.of(context).style,),),
          new Text(_text),
          new MaterialButton(color: Colors.orangeAccent,onPressed: ()
          {_displayTextInputDialog(context);},child: new Text("Kendi Notunuzu Ekleyin"),),
          ElevatedButton(
            child: Text("Notlarımı göster"),
            onPressed: () {
              FileUtils.readFromFile().then((contents) {
                setState(() {
                  _text = contents;
                });
              },);},
          ),
        ],
      ),
    );
  }
  Future<void> _displayTextInputDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Notu giriniz:'),
          content: TextField(
            controller: _c,
            decoration: InputDecoration(hintText: "Bir not yazınız"),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Çık'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            ElevatedButton(
              child: Text("Kaydet"),
              onPressed: () {
                FileUtils.saveToFile(_c.text);
                Navigator.pop(context);
                },
            ),
          ],
        );
      },
    );
  }
}
