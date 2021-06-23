import 'package:flutter/material.dart';
import 'package:flutter_app/homepages/tabbar/salatalar.dart';
import 'package:flutter_app/homepages/tabbar/tatlilar.dart';
import 'package:flutter_app/homepages/tabbar/yemekler.dart';
class KategoriPage extends StatefulWidget{
  KategoriState createState()=> KategoriState();
}
class KategoriState extends State<KategoriPage>with SingleTickerProviderStateMixin{
  TabController _tabController;
  @override
  void initState(){
    super.initState();
    _tabController=TabController(length: 3,vsync: this);
  }
  @override
  void dispose(){
    super.dispose();
    _tabController.dispose();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Kategoriler',
          style: TextStyle(
            fontFamily:'Varela',
            fontSize: 42.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.orangeAccent,
          unselectedLabelColor: Colors.black,
          labelColor: Colors.orangeAccent,
          indicatorWeight: 5.0,
          indicatorSize: TabBarIndicatorSize.tab,
          tabs: <Widget>
        [
          Tab(text: 'Tatlılar',
          icon:Icon(Icons.cake),
          ),
          Tab(text:'Salatalar',
            icon:Icon(Icons.local_drink),
          ),
          Tab(text: 'Yemekler',
            icon:Icon(Icons.fastfood),
          ),
        ],
        ),
        ),
      body: TabBarView(
            controller: _tabController,
            children: <Widget>[
              Tatlilar(),
              Salatalar(),
              Yemekler(),
            ],),
      );
  }
}

