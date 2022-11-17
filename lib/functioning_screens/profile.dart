import 'package:flutter/material.dart';

class Profile_Screen extends StatefulWidget {
  @override
  State<Profile_Screen> createState() => InitState();
}

class InitState extends State<Profile_Screen> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 30,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios, color:Colors.orange[300],size: 17,),
                ),
                alignment: Alignment.topLeft,
                decoration: BoxDecoration(
                  // border: Border.all( color: Colors.orange,width: 0),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 5),
                      blurRadius: 5,
                      color: Color.fromARGB(255, 209, 199, 199),
                    )
                  ],

                  color: Colors.grey[200],
                ),
              ),
              Container(
                child: Center(
                    child: Column(
                  children: [
                    Container(
                      width: 70,
                      height: 70,
                      margin: const EdgeInsets.only(top: 40),
                      alignment: Alignment.center,
                      child: Image.asset(
                        "../assets/icons/profileicon.jpg",
                        width: 50,
                        height: 50,
                      ),
                    ),
                    const Text(
                      "Yvette IRADUKUNDA",
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: const Text(
                        "Data Collector",
                        style:
                            TextStyle(color: Color.fromARGB(255, 92, 89, 89)),
                      ),
                    ),
                  ],
                )),
                height: 200,
                margin: EdgeInsets.only(
                  left: 5,
                  right: 5,
                  top: 0,
                ),
                padding: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  // border: Border.all( color: Colors.orange,width: 0),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 1),
                      blurRadius: 1,
                      color: Color.fromARGB(255, 209, 199, 199),
                    )
                  ],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  color: Colors.grey[200],
                ),
              ),

             // Email cantaner  
              Container(
                height: 50,
                margin: EdgeInsets.only(
                  left: 5,
                  right: 5,
                  top: 1,
                ),
                padding: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide.none, 
                    left:BorderSide.none, 
                    right: BorderSide.none,
                    bottom: BorderSide(width: 1, color: Color.fromARGB(255, 238, 238, 238))
                     ),
               
                ),
               
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20,left:0),
                        child: Text("Email:"),
                      ),
                    ],
                  ),

                   Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20,left:20),
                        child: Text("iradyvtte12@gmail.com"),
                      ),
                    ],
                  ),

                  
                ],
               ),

              ),
              
              //phone number contaner

              Container(
                height: 50,
                margin: EdgeInsets.only(
                  left: 5,
                  right: 5,
                  top: 1,
                ),
                padding: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide.none, 
                    left:BorderSide.none, 
                    right: BorderSide.none,
                    bottom: BorderSide(width: 1, color: Color.fromARGB(255, 238, 238, 238))
                     ),
               
                ),
               
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20,left:0),
                        child: Text("Telephone:"),
                      ),
                    ],
                  ),

                   Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20,left:20),
                        child: Text("+250782070740"),
                      ),
                    ],
                  ),

                  
                ],
               ),

              ),


              //identity container

              Container(
                height: 50,
                margin: EdgeInsets.only(
                  left: 5,
                  right: 5,
                  top: 1,
                ),
                padding: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide.none, 
                    left:BorderSide.none, 
                    right: BorderSide.none,
                    bottom: BorderSide(width: 1, color: Color.fromARGB(255, 238, 238, 238))
                     ),
               
                ),
               
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20,left:0),
                        child: Text("ID number:"),
                      ),
                    ],
                  ),

                   Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20,left:20),
                        child: Text("119902712849028"),
                      ),
                    ],
                  ),

                  
                ],
               ),

              ),

              // Road name container 
                 Container(
                height: 50,
                margin: EdgeInsets.only(
                  left: 5,
                  right: 5,
                  top: 1,
                ),
                padding: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide.none, 
                    left:BorderSide.none, 
                    right: BorderSide.none,
                    bottom: BorderSide(width: 1, color: Color.fromARGB(255, 238, 238, 238))
                     ),
               
                ),
               
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20,left:0),
                        child: Text("Section:"),
                      ),
                    ],
                  ),

                   Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20,left:20),
                        child: Text("Gahanga FDG"),
                      ),
                    ],
                  ),

                  
                ],
               ),

              ),

                  // Spot code container
                 Container(
                height: 50,
                margin: EdgeInsets.only(
                  left: 5,
                  right: 5,
                  top: 1,
                ),
                padding: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide.none, 
                    left:BorderSide.none, 
                    right: BorderSide.none,
                    bottom: BorderSide(width: 1, color: Color.fromARGB(255, 238, 238, 238))
                     ),
               
                ),
               
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20,left:0),
                        child: Text("Spot code:"),
                      ),
                    ],
                  ),

                   Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20,left:20),
                        child: Text("7012 S"),
                      ),
                    ],
                  ),

                  
                ],
               ),

              ),

            // Station Supervisor
               Container(
                height: 50,
                margin: EdgeInsets.only(
                  left: 5,
                  right: 5,
                  top: 1,
                ),
                padding: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide.none, 
                    left:BorderSide.none, 
                    right: BorderSide.none,
                    bottom: BorderSide(width: 1, color: Color.fromARGB(255, 238, 238, 238))
                     ),
               
                ),
               
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20,left:0),
                        child: Text("Station Supervisor:"),
                      ),
                    ],
                  ),

                   Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20,left:20),
                        child: Text("Jeannine MUKASHEMA"),
                      ),
                    ],
                  ),

                  
                ],
               ),

              ),

              // Supervisor
                 Container(
                height: 50,
                margin: EdgeInsets.only(
                  left: 5,
                  right: 5,
                  top: 1,
                ),
                padding: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide.none, 
                    left:BorderSide.none, 
                    right: BorderSide.none,
                    bottom: BorderSide(width: 1, color: Color.fromARGB(255, 238, 238, 238))
                     ),
               
                ),
               
               child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20,left:0),
                        child: Text("Supervisor:"),
                      ),
                    ],
                  ),

                   Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20,left:20),
                        child: Text("Justin BIZUMUREMYI"),
                      ),
                    ],
                  ),

                  // Working Period

                  
                ],
               ),

              ),
            ],
          ),
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
            label: 'New',
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
