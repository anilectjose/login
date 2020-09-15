import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Home Page',
        home: new Appli(),
        theme: ThemeData(

        ),
      );
    }
}
class Appli extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home") ,
        backgroundColor: Colors.black,
        leading: IconButton(icon: Icon(Icons.menu), onPressed: (){}),
        actions: [IconButton(icon: Icon(Icons.search), color: Colors.white, onPressed: (){}),
          IconButton(icon: Icon(Icons.notifications_none),color: Colors.white, onPressed: (){
            Fluttertoast.showToast(
                msg: "No notifications to show..",
                textColor: Colors.black
            );})
        ],
        elevation: 30,
      ),

    );
  }
}