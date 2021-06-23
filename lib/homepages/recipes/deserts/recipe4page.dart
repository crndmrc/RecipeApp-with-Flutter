import 'package:flutter/material.dart';
class Recipe4page extends StatefulWidget{
  Recipe4State createState()=> Recipe4State();
}
class Recipe4State extends State<Recipe4page>{
  int currentTab = 0;
  Widget currentScreens = Recipe4page();
  var recipe4=[
    {
      'Adi':'Brownie',
      'Malzemeler':['300 gram bitter çikolata (iri parçalanmış), 3 adetyumurta,150 gramtereyağı, 1 su bardağıtoz şeker, 1 su bardağı un, 1 paketvanilya'],
      'Yapilisi':'1 Tereyağını minik bir sos tenceresinin içerisinde eritin.',
      '2':'Eridiği gibi ocaktan alın ve tereyağınız henüz sıcakken parça parça böldüğünüz çikolataları içerisine aktarın.',
      '3':'Tereyağının sıcağı ile erimesini sağlayın.Ardından tereyağlı çikolata karışımını oda sıcaklığında soğuması için bir kenara alın.Bir kabın içerisine yumurtaları alın, şekeri de ilave ederek güzelce çırpın.',
      '4':'Çırpılan şekerle yumurtaların üzerine azar azar tereyağlı çikolatalı karışımı aktarın ve karıştırmaya devam edin.',
      '5':'Tüm karışımı ekleyip karıştırdıktan sonra un ve vanilyayı eleyerek üzerine ilave edin. Spatula yardımıyla brownie harcını tüm malzemeler birleşinceye dek katlayarak karıştırın.Ardından yağlanmış ya da pişirme kağıdı serilmiş 20 cm\'lik kare kek kalıbına hazırladığınız karışımı aktarın. Üst kısmını spatulayla düzeltin.',
      '6':'160 derecede önceden ısıtılmış fansız fırında 30-35 dakika kadar pişirin. Üzeri hafif çatlak bir görünüm alınca fırından çıkarın ve oda sıcaklığında en az 1 saat kadar dinlendirin.Dinlendikçe kıvamı güzelleşecektir. Dinlendikten sonra dilimleyerek servis edebilirsiniz. Afiyet olsun!'
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
            child: Image.asset("images/tatlilar/brownie.jpg"),
          ),),
          Text(recipe4.toString(),textAlign: TextAlign.center,style: TextStyle(fontSize: 16),),
        ],
      ),
    );
  }
}