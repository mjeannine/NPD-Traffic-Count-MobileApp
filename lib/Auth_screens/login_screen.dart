import 'package:flutter/material.dart';
import 'package:npd_traffic_count_app/functioning_screens/home.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => InitState();
}

class InitState extends State<LoginScreen> {
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
              height: 400,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(90)),
                color: Colors.orange,
                gradient: LinearGradient(
                  colors: [(Colors.orange), (Colors.orange.shade800)],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 60),
                      child: Text(
                        "Traffic Count Survey",
                        style: TextStyle(
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                            color: Colors.white),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 40),
                        child: Text(
                          "Phase 4",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontStyle: FontStyle.italic,
                              fontSize: 30),
                        )),
                    Container(
                      margin: EdgeInsets.only(right: 30, top: 20),
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 100),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey[200],
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Color.fromRGBO(255, 183, 77, 1),
                    )
                  ]),
              alignment: Alignment.center,
              child: TextField(
                cursorColor: Colors.orange.shade300,
                decoration: InputDecoration(
                  icon: Image.asset(
                    "assets/icons/id.png",
                    height: 40,
                    width: 40,
                  ),
                  // color:Colors.orange.shade300
                  hintText: "Enter your ID number",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 20),
              padding: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey[200],
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Colors.orange.shade300,
                    )
                  ]),
              alignment: Alignment.center,
              child: TextField(
                obscureText: true,
                cursorColor: Colors.orange.shade300,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.vpn_key,
                    color: Colors.orange.shade300,
                  ),
                  // color:Colors.orange.shade300
                  hintText: "Enter your Spot code",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, right: 30),
              alignment: Alignment.centerRight,
              child: GestureDetector(
                  child: Text("Forgot spot code",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue)),
                  onTap: () => {
                        //code for changing spot code
                      }),
            ),
            GestureDetector(
              onTap: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                ),
              },
              child: Container(
                margin: EdgeInsets.only(top: 50, right: 20, left: 20),
                alignment: Alignment.center,
                height: 50,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: Colors.orange.shade800,
                    ),
                  ],
                  gradient: LinearGradient(
                    colors: [(Colors.orange), (Color.fromRGBO(239, 108, 0, 1))],
                    begin: Alignment.centerLeft,
                    end: Alignment.center,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(
                  "CONTINUE",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 40, right: 20),
              alignment: Alignment.center,
              child: GestureDetector(
                  child: Image.asset(
                    "assets/logos/npd_logo.png",
                    width: 80,
                    height: 80,
                  ),
                  onTap: () => {
                        //code for changing spot code
                      }),
            ),
          ],
        ),
      ),
    );
  }
}

















































































//checking boxes
// class items extends StatelessWidget {
//   const items({ Key? key }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//      body: Column(
//       children: [
//         TaskItem(label:"English"),
//         TaskItem(label:"Frensh"),
//         TaskItem(label:"Swahili"),
//       ],
//     ),
//     );
//   }
// }

// class TaskItem extends StatefulWidget {
//   final String label; 

//   TaskItem({ Key? key,  required this.label}) : super(key: key);

//   @override
//   State<TaskItem> createState() => _TaskItemState();
// }

// class _TaskItemState extends State<TaskItem> {
//   bool? _value = false;

//  @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//       Checkbox(value: _value, onChanged: (newValue) => setState(() =>_value = newValue)),
//       Text(widget.label)
//       ],
//     );
//   }
// }
