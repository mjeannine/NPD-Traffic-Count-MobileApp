import 'package:flutter/material.dart';
import 'package:npd_traffic_count_app/functioning_screens/report.dart';
import 'package:npd_traffic_count_app/functioning_screens/traffic_counting.dart';
import 'package:npd_traffic_count_app/functioning_screens/home.dart';
import 'package:npd_traffic_count_app/functioning_screens/profile.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => InitState();
}

class InitState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(90),
                    bottomRight: Radius.circular(90)),
                color: Color.fromARGB(255, 33, 12, 139),
                gradient: LinearGradient(
                  colors: [(Colors.white), (Colors.white)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 6.0,
                  )
                ],
              ),
              child: Center(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          width: 300,
                          margin: EdgeInsets.only(left: 20, top: 30),
                          child: Text(
                            "Hi, Yvette IRADUKUNDA",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.grey[700],
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                         GestureDetector(
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile_Screen()),
                ),
              },
                        child:Container(
                          width: 50,
                          height: 50,
                          margin: EdgeInsets.only(left: 80, top: 50),
                          alignment: Alignment.topRight,
                          child: Image.asset(
                            "assets/icons/profileicon.jpg",
                            width: 35,
                            height: 35,
                          ),
                        ),
                         ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                      padding: EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey[200],
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 5),
                              blurRadius: 20,
                              color: Colors.white,
                            )
                          ]),
                      alignment: Alignment.center,
                      child: TextField(
                        cursorColor: Colors.orange.shade300,
                        decoration: InputDecoration(
                          // color:Colors.orange.shade300
                          hintText: "Search vehicle category",
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          icon: Icon(
                            Icons.search,
                            color: Colors.orange[300],
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          margin: EdgeInsets.only(left: 33, top: 20),
                          padding: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                              // border: Border.all( color: Colors.orange,width: 0),
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 4),
                                  blurRadius: 5,
                                  color: Color.fromARGB(255, 209, 199, 199),
                                )
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Vehicles",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.only(top: 20),
                                child: Text(
                                  "10700",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orange[300],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          margin: EdgeInsets.only(left: 50, top: 20),
                          padding: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                              // border: Border.all( color: Colors.orange,width: 0),
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 5),
                                  blurRadius: 20,
                                  color: Color.fromARGB(255, 209, 199, 199),
                                )
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Days",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.only(top: 20),
                                child: Text(
                                  "2",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orange[300],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          margin: EdgeInsets.only(left: 60, top: 20),
                          padding: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                              // border: Border.all(color: Colors.orange, width: 0),
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0, 5),
                                  blurRadius: 5,
                                  color: Color.fromARGB(255, 209, 199, 199),
                                )
                              ]),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Hours",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.only(top: 20),
                                child: Text(
                                  "29",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.orange[300],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Report_Screen()),
                ),
              },
              child: Container(
                alignment: Alignment.topRight,
                child: Text(
                  "See all",
                  style: TextStyle(
                    shadows: [
                      Shadow(color: Colors.blue, offset: Offset(0, -3))
                    ],
                    color: Colors.transparent,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.blue,
                    decorationThickness: 2,
                  ),
                ),
                margin: EdgeInsets.only(right: 20, top: 20),
                padding: EdgeInsets.only(right: 20),
              ),
            ),
            for (int a = 1; a <= 5; a++)
              Container(
                height: 90,
                margin: EdgeInsets.only(left: 20, right: 20, top: 5),
                padding: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20, left: 0),
                          child: Text(
                            "Bike",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20, left: 20),
                          child: Text(
                            "23",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.orange[300]),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20, left: 20),
                          child: Image.asset(
                            "assets/icons/bike.jpg",
                            width: 60,
                            height: 60,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
     
        items: [
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomeScreen())),
              child: Icon(
                Icons.home,
                color: Color.fromARGB(255, 255, 183, 77),
              ),
            ),
            label: 'Home',
          ),
         BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Traffic_Count())),
              child: Icon(
                Icons.add_circle_outlined,
                color: Color.fromARGB(255, 255, 183, 77),
              ),
            ),
            label: 'Count',
          ),
          BottomNavigationBarItem(
            icon: GestureDetector(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Profile_Screen())),
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






















// class HomeScreen extends StatefulWidget {
//   const HomeScreen({ Key? key }) : super(key: key);

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           //TODO: condition to display name the logged in user
//           margin: EdgeInsets.only(top: 20,left: 20),
//           alignment: Alignment.topLeft,
//           width: 200,
//           color:Colors.green,
//           child: Text("Hi Yvette IRADUKUNDA", 
//           style: TextStyle(
//             fontSize: 15,
//             color: Colors.grey[700],
//             decoration: TextDecoration.none,
//              ),
//              ),
//         ),

//         Container(
//                       margin: EdgeInsets.only(right: 20),
//                       alignment: Alignment.topRight,
//              child: Image.asset(
//                   "../assets/icons/npd_logo.png",
//                   width: 100,
//                   height: 100,
//                     )
//         )
//       ],
//     );
//   }
// }