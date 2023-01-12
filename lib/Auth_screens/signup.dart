import 'package:flutter/material.dart';
import 'package:npd_traffic_count_app/functioning_screens/home.dart';

class  RegisterScreen extends StatefulWidget {
  const  RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => InitState();
}

class InitState extends State<RegisterScreen> {
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
              height: 230,
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(90)),
                color: Color.fromARGB(255, 255, 255, 255),
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
                        "Signup",
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

            // First name
            SizedBox(height: 5,),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 0),
              padding: EdgeInsets.only(left: 20, right: 20),
               height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[200],
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 5),
                      blurRadius: 50,
                      color: Color.fromRGBO(255, 183, 77, 1),
                    )
                  ]),
              alignment: Alignment.center,
              child: TextField(
                cursorColor: Colors.orange.shade300,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.person,
                    color: Colors.orange.shade300,
                  ),
                  // color:Colors.orange.shade300
                  hintText: "First Name",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),

            // second name
            SizedBox(height: 5,),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20,),
              padding: EdgeInsets.only(left: 20, right: 20),
               height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
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
                cursorColor: Colors.orange.shade300,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.person,
                    color: Colors.orange.shade300,
                  ),
                  // color:Colors.orange.shade300
                  hintText: "Second Name",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),

            // Gender
              SizedBox(height: 5,),
              Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 0),
              padding: EdgeInsets.only(left: 20, right: 20),
               height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
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
                  icon: Icon(
                    Icons.man_outlined,
                    color: Colors.orange.shade300,
                  ),
                  // color:Colors.orange.shade300
                  hintText: "Gender",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),


            // telephone
            SizedBox(height: 5,),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20,),
              padding: EdgeInsets.only(left: 20, right: 20),
               height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
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
                cursorColor: Colors.orange.shade300,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.phone,
                    color: Colors.orange.shade300,
                  ),
                  // color:Colors.orange.shade300
                  hintText: "Telephone",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),

            // ID number
             SizedBox(height: 5,),
              Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 0),
              padding: EdgeInsets.only(left: 20, right: 20),
               height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
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
                  icon: Icon(
                    Icons.perm_identity_rounded,
                    color: Colors.orange.shade300,
                  ),
                  // color:Colors.orange.shade300
                  hintText: "ID Number",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 5,),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20,),
              padding: EdgeInsets.only(left: 20, right: 20),
               height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
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
                cursorColor: Colors.orange.shade300,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.perm_identity,
                    color: Colors.orange.shade300,
                  ),
                  // color:Colors.orange.shade300
                  hintText: "Spot code",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            

           // Email field
             SizedBox(height: 5,), 
              Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 0),
              padding: EdgeInsets.only( left:10,right: 20),
               height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
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
                     prefixIcon: const Icon(
                     Icons.mail,
                     color: Colors.orange,
     
        ),
                  // color:Colors.orange.shade300
                  hintText: "Email",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),

          // Password
            SizedBox(height: 5,),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20,),
              padding: EdgeInsets.only(left: 20, right: 20),
               height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
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
                cursorColor: Colors.orange.shade300,
                decoration: InputDecoration(
                  icon: Icon(
                    Icons.vpn_key,
                    color: Colors.orange.shade300,
                  ),
                  // color:Colors.orange.shade300
                  hintText: "Password",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),
            
             SizedBox(height: 5,),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20,),
              padding: EdgeInsets.only(left: 20, right: 20),
               height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
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
                  hintText: "Confirm Password",
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                ),
              ),
            ),

            SizedBox(height: 10,),
            GestureDetector(
              onTap: () => {
                Navigator.pushNamed(
                  context, '/login'),
              },
              child: Container(
                margin: EdgeInsets.only( right: 20, left: 20),
                alignment: Alignment.center,
                height: 60,
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
                  "SignUp",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            
            Container(
              margin: EdgeInsets.only(top: 10, right: 20),
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
