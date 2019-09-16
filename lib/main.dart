import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.redAccent
      ),
      home: Homepage(),
      
    );
  }
}
class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Mysql"),
      ),
    );
  }

  Future getData() async{
    var url="http://flutter-mysql.000webhostapp.com/get.php";
    http.Response response=await http.get(url);
    var data =jsonDecode(response.body);
    print(data.toString());
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }
}