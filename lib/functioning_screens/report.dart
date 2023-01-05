import 'package:flutter/material.dart';

class Report_Screen extends StatefulWidget {
  const Report_Screen({Key? key}) : super(key: key);

  @override
  State<Report_Screen> createState() => InitState();
}

class InitState extends State<Report_Screen> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Traffic Count Daily Report", style: TextStyle(color: Colors.orange[300]),),
        backgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.orange[300]),
      leading: IconButton(
      onPressed: (){
        Navigator.pop(context);
      },
      icon:Icon(Icons.arrow_back_ios),), ),
      body: SingleChildScrollView(
        child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                        for(var a=1;a<=10;a++)
                          Container(
                        
                          height: 80,
                          margin: EdgeInsets.only(left: 20, right: 20, top:10,),
                          padding: EdgeInsets.only(left: 20, right: 20),
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
                        ),
                        
                     
                       
                      ],
                    ),
          ),
          ),
        
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





