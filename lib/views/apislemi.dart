import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_app/modules/api/load_data.dart';
import 'package:http/http.dart' as http;

Future<LoadData> apiCall() async {
  final response = await http.get(
      'https://api.edamam.com/search?q=banana&app_id=fc6b731d&app_key=d50204a3f5d071eb46822d1292c48d32');
  if (response.statusCode == 200) {
    return LoadData.fromJson(json.decode(response.body));
  } else {
    throw Exception('Failed to load');
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: apiPage(title: 'Json API'),
    );
  }
}

class apiPage extends StatefulWidget {
  apiPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _apiPageState createState() => _apiPageState();
}

class _apiPageState extends State<apiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<LoadData>(
        future: apiCall(),
        // ignore: missing_return
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Container(
                child: Center(
                    child: Text(
                      " ${snapshot.data.image} \n" +
                          " ${snapshot.data.url}\n"+
                      "${snapshot.data.source}\n"+
                          "${snapshot.data.label}",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.orange),
                    )));
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
