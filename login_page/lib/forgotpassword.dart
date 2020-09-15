import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:login_page/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
@override
  Widget build(BuildContext context){
  return MaterialApp(
    title: 'Forgot Password',
    home:new fgpass(),
  );
}
}
class fgpass extends StatefulWidget {
  @override
  _fgpassState createState() => new _fgpassState();
}

class _fgpassState extends State<fgpass>{
  @override
  Widget build(BuildContext){
    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         Container(
         child: Stack(
         children: [
           SizedBox(height: 100,),
            Container(
            padding: EdgeInsets.fromLTRB(20, 100, 20, 0),
      child: Text("Forgot",style:  TextStyle(fontSize: 50, fontWeight: FontWeight.bold),),
    ),
    Container(
    padding: EdgeInsets.fromLTRB(15, 170, 0, 0),
    child: Text("Password", style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),),
    ),
    Container(
    padding: EdgeInsets.fromLTRB(235, 170, 0, 0),
    child: Text(".", style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.green), ),
    ),
    Container(
    padding: EdgeInsets.fromLTRB(20, 260, 20, 0),
    child:Column(
          children: [
      TextField(
      decoration: InputDecoration(
      labelText: "Email id",
          labelStyle: TextStyle(fontFamily: 'Monsterrat', fontWeight: FontWeight.bold, color: Colors.grey,), focusedBorder: UnderlineInputBorder(
          borderSide:BorderSide(color: Colors.green))
      ),
    ),
    ],
      ),
    ),
    ],
    ),
    ),
          SizedBox(height: 20,),
          Container(
            height: 40,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
                border: Border.all(
                    color: Colors.black
                )
            ),
            child: Material(
              borderRadius: BorderRadius.circular(20),
              shadowColor: Colors.white,
              color: Colors.white,
              elevation: 7,
              child: GestureDetector(
                onTap: (){},
                child: Center(
                  child: Text("Get OTP",style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold,fontFamily: 'Monsterrat'),),
                ),
              ),
            ),
          )
    ],
    ),
    );
    }
}