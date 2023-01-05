import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:npd_traffic_count_app/functioning_screens/home.dart';
import 'package:npd_traffic_count_app/functioning_screens/traffic_counting.dart';
import 'package:npd_traffic_count_app/functioning_screens/profile.dart';

class Traffic_Count extends StatefulWidget {
  const Traffic_Count({Key? key}) : super(key: key);

  @override
  State<Traffic_Count> createState() => InitState();
}

class InitState extends State<Traffic_Count> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Traffic Counting", 
          style: TextStyle(color: Colors.orange[300]),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.orange[300]),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),

        
      ),


      // app body
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                  child: Text("Timer", style: TextStyle(fontSize: 20),),
                ),
                Container(
                  child: Text("00:15", style: TextStyle(fontSize: 20, color: Colors.orange[300]),),
                ),
            // loop for iterating through all counting 
            for (int a = 1; a <= 6; a++)
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

               // First column for counting
                  Container(
                    width: 200,
                    height: 118,
                    margin: EdgeInsets.only(left: 30, top: 10),
                    decoration: BoxDecoration(
                        // border: Border.all( color: Colors.orange,width: 0),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 5),
                            blurRadius: 5,
                            color: Color.fromARGB(255, 209, 199, 199),
                          )
                        ]),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              margin: EdgeInsets.only(top: 15, left: 10),
                              decoration: BoxDecoration(
                                  color: Colors.orange, shape: BoxShape.circle),
                              child: Icon(
                                Icons.add_circle_outlined,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              width: 30,
                              height: 30,
                              margin: EdgeInsets.only(top: 30, left: 10),
                              decoration: BoxDecoration(
                                  color: Colors.orange, shape: BoxShape.circle),
                              child: Icon(
                                Icons.remove_circle_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                "30",
                                style: TextStyle(
                                  fontSize: 10,
                                 
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10, left: 10),
                              child: Text("Trailer truck"),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              child: Image.asset(
                                "assets/icons/bike1.png",
                                width: 100,
                                height: 80,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),


                // second column for counting
                  Container(
                    width: 200,
                    height: 118,
                    margin: EdgeInsets.only(left: 20, top: 10),
                    decoration: BoxDecoration(
                        // border: Border.all( color: Colors.orange,width: 0),
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 5),
                            blurRadius: 5,
                            color: Color.fromARGB(255, 209, 199, 199),
                          )
                        ]),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 30,
                              height: 30,
                              margin: EdgeInsets.only(top: 15, left: 10),
                              decoration: BoxDecoration(
                                  color: Colors.orange, shape: BoxShape.circle),
                              child: Icon(
                                Icons.add_circle_outlined,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              width: 30,
                              height: 30,
                              margin: EdgeInsets.only(top: 30, left: 10),
                              decoration: BoxDecoration(
                                  color: Colors.orange, shape: BoxShape.circle),
                              child: Icon(
                                Icons.remove_circle_outlined,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                "0",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10, left: 10),
                              child: Text("Motor Bike"),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 30),
                              child: Image.asset(
                                "assets/icons/bike1.png",
                                 width: 100,
                                height: 80,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                 
                ],
              ),
          ],
        ),
      ),


      // bottomNavigationBar starting point
        bottomNavigationBar: BottomNavigationBar(
     
        items: [
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/home'),
              child: Icon(
                Icons.home,
                color: Color.fromARGB(255, 255, 183, 77),
              ),
            ),
            label: 'Home',
          ),
         BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/counting'),
              child: Icon(
                Icons.add_circle_outlined,
                color: Color.fromARGB(255, 255, 183, 77),
              ),
            ),
            label: 'Count',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () => Navigator.pushNamed(context, '/profile'),
              child: Icon(
                Icons.account_circle_rounded,
                color: Color.fromARGB(255, 255, 183, 77),
              ),
            ),
            label: 'Profile',
          ),
        ],
      ),

    );
  }
}
