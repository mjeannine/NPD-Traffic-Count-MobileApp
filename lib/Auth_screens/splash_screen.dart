
import 'dart:async';

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:npd_traffic_count_app/Auth_screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<SplashScreen> {

  // @override
  // void initState(){
  //   super.initState();
  //   startTimer();
  // }
  // startTimer() async {
  //   var duration = Duration(seconds: 0);
  //   return new Timer(duration, loginRoute);
  // }

  // loginRoute(){
  //   Navigator.pushReplacement(context, MaterialPageRoute(
  //     builder: (context) => LoginScreen()
  //     ));
  // }
  @override
  Widget build(BuildContext context) {
    return initwidget();
  }

  Widget initwidget() {
    return Scaffold(
      
      body:  Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              // gradient: LinearGradient(colors: [(Colors.orange) , (Colors.black)],
              // begin:Alignment.topCenter,
              // end: Alignment.bottomCenter,
              // ),65
            ),
          ),
          Center(
            child: AnimatedSplashScreen(splash: Image.asset("assets/logos/Traffic5.png", width: 70,height: 70,),duration: 0,
      splashTransition: SplashTransition.rotationTransition,animationDuration:Duration(seconds: 10) ,
      backgroundColor: Colors.white,
      
      nextScreen: LoginScreen()), 
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(top:120,),
              child: Text("Traffic Count Survey",
                        style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ),

          Center(
            child: Column(
              mainAxisAlignment:MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  child: Image.asset(
                  "assets/logos/npd_logo.png",
                  width: 100,
                  height: 100,
                ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
