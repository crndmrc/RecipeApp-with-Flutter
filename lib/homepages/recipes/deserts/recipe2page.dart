import 'package:flutter/material.dart';
class Recipe2page extends StatefulWidget{
  Recipe2State createState()=> Recipe2State();
}
class Recipe2State extends State<Recipe2page>{
  var recipe2=[
    {
      'Adi':'',
      'Malzemeler':['Hamur Malzemeleri:2 Su Bardağı Un,1 Yemek Kaşığı Pudra Şekeri,2 Yemek Kaşığı Sirke,1 Tatlı Kaşığı Portakal Kabuğu Rendesi,1 Adet Yumurta,1 Paket Vanilin⠀ Dolgu Malzemesi;200 Gr Labne, 4 Yemek Kaşığı Pudra Şekeri,2 Paket Kremşanti, 1/2 Çay Bardağı Süt, Antep Fıstığı (Süslemek için),Damla Çikolata (Süslemek İçin)⠀'],
      'Yapilisi':'1) Yumurta, sirke ve portakal kabuğu rendesini çırpın. 2) Diğer malzemeleri ilave edip yoğurun, sert bir hamur olacak güç gerektiren bir hamur. 3) 1 saat dolapta dinlendirdikten sonra eşit parçalara bölüp merdane ile açın ince bir hamur olacak.4) Korne kalıba ( eminönünde var yada internetten alın) sarın uçlarını su ile ıslatıp sıkıca bastırın ki açılmasın.5) Kızgın yağa atın her tarafını eşit pişirin, renk aldıktan sonra yağdan alın.⠀Dolgu hazırlanış Aşaması; 1) Tüm malzemeleri kaba alıp güzelce çırpın. 2) Sıkma torbasına aldıktan sonra dolapta 1 saat soğutun.3) Cannoli lerin içini doldurun ( servis esnasında doldurun yoksa çıtırlığı gider) 4) Antep fıstığını kavurun kabuklarından ayırın güzelce dövün.5) Bir tarafını antepfıstıpına bir tarafını damla çikolataya bandırın.6) Bu tatlının yanına 🇹🇷 TÜRK Kahvesini Sakın Unutmayın Afiyet Bal Şeker Olsun. ⠀'
    }
  ];
  Widget build(BuildContext context){
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
          style:TextStyle(fontFamily: 'Varela',fontSize: 20.0,color:Color(0xFF545068)),
        ),
      ),
      body:Column(
        children: <Widget>[
          Expanded(child:InkWell(
            child: Image.asset("images/tatlilar/recipe2.jpg"),
          ),),
          Text(recipe2.toString(),textAlign: TextAlign.center,style: TextStyle(fontSize: 16),),
        ],
      ),
    );
  }
}