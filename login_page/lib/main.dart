import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'signup.dart';
import 'homepage.dart';
import 'forgotpassword.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: <String,WidgetBuilder>{
        '/signup':(BuildContext context)=>new SignupPage(),
        '/homepage':(BuildContext context)=>new Appli(),
        '/forgot':(BuildContext context)=>new fgpass()
      },
      title: 'Login Page',
      home: new loginpage(),
      theme: ThemeData(

      ),
    );
  }
}
class loginpage extends StatefulWidget {
  @override
      _loginpageState createState() => new _loginpageState();
}

class _loginpageState extends State<loginpage>{
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
                  child: Text("Hello",style:  TextStyle(fontSize: 80, fontWeight: FontWeight.bold),),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(15, 140, 0, 0),
                  child: Text("There", style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(220, 140, 0, 0),
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
               SizedBox(height: 20,),
               Container(
                 alignment: Alignment(1,0),
                 padding: EdgeInsets.fromLTRB(20, 15,0,0),
                 child: InkWell(
                   onTap: (){Navigator.of(context).pushNamed('/forgot');},
                   child: Text("Forgot Password", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontFamily: 'Monsterrat', decoration: TextDecoration.underline),),
                 ),
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
                       onTap: (){Navigator.of(context).pushNamed('/homepage');},
                       child:  Center(
                         child: Text("LOGIN", style: TextStyle(color: Colors.white,fontFamily: 'Monsterrat',fontWeight: FontWeight.bold),),
                       ),
                     ),
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
                     onTap: (){Navigator.of(context).pushNamed('/signup');},
                     child: Center(
                       child: Text("SIGN UP",style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold,fontFamily: 'Monsterrat'),),
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
