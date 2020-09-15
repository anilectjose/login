import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      home: new SignupPage(),
      theme: ThemeData(

      ),
    );
  }
}
class SignupPage extends StatefulWidget {
  @override
  _loginpageState createState() => new _loginpageState();
}

class _loginpageState extends State<SignupPage>{
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
                Container(
                  padding: EdgeInsets.fromLTRB(15, 60, 0, 0),
                  child: Text("Signup",style:  TextStyle(fontSize: 80, fontWeight: FontWeight.bold),),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(260, 60, 0, 0),
                  child: Text(".", style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold, color: Colors.green), ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 35, 20, 0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: "Email Id",
                    labelStyle: TextStyle(fontFamily: "Monsterrat", fontWeight: FontWeight.bold, color: Colors.grey),
                    focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.green))
                  ),
                ),
                SizedBox(height: 20.0),
                TextField(
                  decoration: InputDecoration(
                      labelText: "USERNAME",
                      labelStyle: TextStyle(fontFamily: 'Monsterrat', fontWeight: FontWeight.bold, color: Colors.grey,), focusedBorder: UnderlineInputBorder(
                      borderSide:BorderSide(color: Colors.green))
                  ),
                ),
                SizedBox(height:20.0),
                TextField(
                  decoration: InputDecoration(
                      labelText: "PASSWORD",
                      labelStyle: TextStyle(fontFamily: 'Monsterrat', fontWeight: FontWeight.bold,color: Colors.grey), focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green))
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 40),
                Container(
                  height: 40,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.greenAccent,
                    color: Colors.green,
                    elevation: 7,
                    child: GestureDetector(
                      onTap: (){Navigator.pop(context);},
                      child:  Center(
                        child: Text("SIGN UP", style: TextStyle(color: Colors.white,fontFamily: 'Monsterrat',fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
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
                      onTap: (){Navigator.pop(context);},
                      child:  Center(
                        child: Text("Go Back", style: TextStyle(color: Colors.green,fontFamily: 'Monsterrat',fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
