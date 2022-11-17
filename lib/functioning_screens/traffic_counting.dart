import 'package:flutter/material.dart';

class Traffic_Count extends StatefulWidget {
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
        title: Text("Traffic Counting", style: TextStyle(color: Colors.orange[300]),),
        backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.orange[300]),
      leading: IconButton(
      onPressed: (){
        Navigator.pop(context);
      },
      icon:Icon(Icons.arrow_back_ios),), ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (int a= 1;a<=4;a++)

            Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        
                        Container(
                          width: 150,
                          height: 100,
                          margin: EdgeInsets.only(left: 20, top: 20),
                        
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
                                color: Colors.orange,
                                shape: BoxShape.circle),
                                      child: Icon(
                                        Icons.add_circle_outlined,
                                        color: Colors.white,
            ),
                                    ),

                                          Container(
                                            width: 30,
                                            height: 30,
                             margin: EdgeInsets.only(top: 10, left: 10),
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                shape: BoxShape.circle),
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
                                    margin: EdgeInsets.only(left:10),
                                    child:Text(
                                      "0", 
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      ),
                                  ),
                                  
                                ],
                              ),
                                Column(
                                   children:[
                                    Container(
                                      margin:EdgeInsets.only(top:10, left:10),
                                      child: Text(
                                        "Motor Bike"
                                        
                                        ),),
                                    
                                    
                                    Container(
                        margin: EdgeInsets.only(left:20),
                        child: Image.asset(
                  "../assets/icons/bike.jpg",
                  width: 60,
                  height: 60,
                ),
                      ),
                                   ],

                                ),
                              ],
                              ),
                        ),
                        Container(
                          width: 150,
                          height: 100,
                          margin: EdgeInsets.only(left: 10, top: 20),
                          
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
                                color: Colors.orange,
                                shape: BoxShape.circle),
                                      child: Icon(
                                        Icons.add_circle_outlined,
                                        color: Colors.white,
            ),
                                    ),

                                          Container(
                                            width: 30,
                                            height: 30,
                             margin: EdgeInsets.only(top: 10, left: 10),
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                shape: BoxShape.circle),
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
                                    margin: EdgeInsets.only(left:10),
                                    child:Text(
                                      "0", 
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      ),
                                  ),
                                  
                                ],
                              ),
                                Column(
                                   children:[
                                    Container(
                                      margin:EdgeInsets.only(top:10, left:10),
                                      child: Text(
                                        "Motor Bike"
                                        
                                        ),),
                                    
                                    
                                    Container(
                        margin: EdgeInsets.only(left:20),
                        child: Image.asset(
                  "../assets/icons/bike.jpg",
                  width: 60,
                  height: 60,
                ),
                      ),
                                   ],

                                ),
                              ],
                              ),
                        ),
                        Container(
                          width: 150,
                          height: 100,
                          margin: EdgeInsets.only(left: 10, top: 20),
                          
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
                               child: Row(
                              children: [
                                Column(
                                  children: [
                                    Container(
                                      width: 30,
                                            height: 30,
                             margin: EdgeInsets.only(top: 15, left: 10),
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                shape: BoxShape.circle),
                                      child: Icon(
                                        Icons.add_circle_outlined,
                                        color: Colors.white,
            ),
                                    ),

                                          Container(
                                            width: 30,
                                            height: 30,
                             margin: EdgeInsets.only(top: 10, left: 10),
                              decoration: BoxDecoration(
                                color: Colors.orange,
                                shape: BoxShape.circle),
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
                                    margin: EdgeInsets.only(left:10),
                                    child:Text(
                                      "0", 
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      ),
                                  ),
                                  
                                ],
                              ),
                                Column(
                                   children:[
                                    Container(
                                      margin:EdgeInsets.only(top:10, left:10),
                                      child: Text(
                                        "Motor Bike"
                                        
                                        ),),
                                    
                                    
                                    Container(
                        margin: EdgeInsets.only(left:20),
                        child: Image.asset(
                  "../assets/icons/bike.jpg",
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

                    
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Color.fromARGB(255, 255, 183, 77)),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle_outlined,
              color: Color.fromARGB(255, 255, 183, 77),
            ),
            label: 'New count',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_rounded,
                color: Color.fromARGB(255, 255, 183, 77)),
            label: 'profile',
          ),
        ],
      ),
    );
  }
}


