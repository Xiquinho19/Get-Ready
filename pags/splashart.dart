import 'dart:async';
import 'package:flutter/material.dart';
import 'login.page.dart';


class SplashScreen extends StatefulWidget {
  @override

  State<StatefulWidget> createState() => InitState();

}

class InitState extends State<SplashScreen>{

  @override
  void initState(){

    super.initState();
    startTimer();
  }

  startTimer() async{
    var duration = Duration(seconds: 3);
    return new Timer(duration, loginRoute);
  }
  loginRoute(){
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => LoginPag()
    ));
  }

  @override
  Widget build(BuildContext context){
    return initWidget();

  }

  Widget initWidget() {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.black87,
            ),
          ),
          Center(
            child: Container(
              child: Image.asset("images/logopng.png"),

            ),

          )
        ],
      ),
    );
  }
}