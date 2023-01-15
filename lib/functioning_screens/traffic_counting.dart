import 'dart:ffi';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:npd_traffic_count_app/components/bottomnav.dart';

class Traffic_Count extends StatefulWidget {
  const Traffic_Count({Key? key}) : super(key: key);

  @override
  State<Traffic_Count> createState() => _TrafficCountingScreenState();
}

class _TrafficCountingScreenState extends State<Traffic_Count> {
int timeLeft = 30;
 
// timer creation
void _startCounterDown(){
  timeLeft = 30;
   Timer.periodic(Duration(seconds: 1), (timer){
    if(timeLeft>0){
    setState(() {
  
      timeLeft--;
    });
    }
    else{
      timer.cancel();
    }
   }
   );
}


// declaration of all needed materials (variables)
 final _formKey = GlobalKey<FormState>(); 
 TextEditingController _countingController = new TextEditingController(text: "0");
 
//  variable for counting
 int countMotor =0;
 int countCar = 0;
 int countUtility = 0;
 int countMicrobus = 0;
 int countMinibus = 0;
 int countLargeBus = 0;
 int CountLightTruck = 0;
 int CountMediumTruck = 0;
int CountHeavyTruck = 0;
 int countTrailerTruck = 0;
 int countBicycle = 0;
int countTampo = 0;





//  String initialValue = "0";
//  String result = "0";

//  int a= 1;

  // @override
  // void initState(){
  //   super.initState();
  //   countingController = new TextEditingController(text:'$initialValue');
   
  // }

  @override
  Widget build(BuildContext context) {

    // ***counting field****
      final countsField = TextFormField(
      autofocus: false,
        keyboardType: TextInputType.number,
        controller: _countingController,
        cursorColor: Color.fromARGB(12, 12, 12,12),

      // onSaved: (value) {
      //   countingController.text = value!;
      // },
      // textInputAction: TextInputAction.next,
      // decoration: InputDecoration(
        
        
      // ),
    );

     
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                   MaterialButton(onPressed: _startCounterDown,
                  child: Text("START", style: TextStyle(fontSize: 20),),
                  color: Colors.orange.shade300,
           ),
           SizedBox(width: 200,),
        Container(
                  child: Text("Time: $timeLeft", style: TextStyle(fontSize: 20, color: Colors.orange[300]),),
                ),

              ],
            ),
          
                
            
            
            // First row with two cards
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

               // First card for counting
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
                              child: GestureDetector(
                                 onTap: () => {
                                  setState((){
                                 
                                    countMotor = countMotor+1;
                                  })
                                 },
                                child: Icon(
                                  Icons.add_circle_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              width: 30,
                              height: 30,
                              margin: EdgeInsets.only(top: 30, left: 10),
                              decoration: BoxDecoration(
                                  color: Colors.orange, shape: BoxShape.circle),
                              child: GestureDetector(
                                 onTap: () => {
                                  setState((){
                                    if (countMotor > 0)
                                     countMotor = countMotor-1;
                                  })
                                 },
                                child: Icon(
                                  Icons.remove_circle_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text("$countMotor"),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10, left: 10),
                              child: Text("MotorCycle"),
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


                // second card for counting
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
                              child: GestureDetector(
                                 onTap: () => {
                                  setState((){
                                    countCar = countCar+1;
                                  })
                                 },
                                child: Icon(
                                  Icons.add_circle_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              width: 30,
                              height: 30,
                              margin: EdgeInsets.only(top: 30, left: 10),
                              decoration: BoxDecoration(
                                  color: Colors.orange, shape: BoxShape.circle),
                              child: GestureDetector(
                                 onTap: () => {
                                  setState((){
                                    if (countCar > 0)
                                    countCar = countCar-1;
                                  })
                                 },
                                child: Icon(
                                  Icons.remove_circle_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text("$countCar"),
                            ),
                          ],
                        ),  
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10, left: 10),
                              child: Text("Cars"),
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


          // Second row 
          Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

               // First card for counting
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
                              child: GestureDetector(
                                 onTap: () => {
                                  setState((){
                                 
                                    countUtility = countUtility+1;
                                  })
                                 },
                                child: Icon(
                                  Icons.add_circle_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              width: 30,
                              height: 30,
                              margin: EdgeInsets.only(top: 30, left: 10),
                              decoration: BoxDecoration(
                                  color: Colors.orange, shape: BoxShape.circle),
                              child: GestureDetector(
                                 onTap: () => {
                                  setState((){
                                    if (countUtility > 0)
                                     countUtility = countUtility-1;
                                  })
                                 },
                                child: Icon(
                                  Icons.remove_circle_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text("$countUtility"),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10, left: 10),
                              child: Text("Utility"),
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


                // second card for counting
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
                              child: GestureDetector(
                                 onTap: () => {
                                  setState((){
                                    countMicrobus = countMicrobus+1;
                                  })
                                 },
                                child: Icon(
                                  Icons.add_circle_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              width: 30,
                              height: 30,
                              margin: EdgeInsets.only(top: 30, left: 10),
                              decoration: BoxDecoration(
                                  color: Colors.orange, shape: BoxShape.circle),
                              child: GestureDetector(
                                 onTap: () => {
                                  setState((){
                                    if (countMicrobus > 0)
                                    countMicrobus= countMicrobus -1;
                                  })
                                 },
                                child: Icon(
                                  Icons.remove_circle_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text("$countMicrobus"),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10, left: 10),
                              child: Text("Microbus"),
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


              // third row

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

               // First card for counting
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
                              child: GestureDetector(
                                 onTap: () => {
                                  setState((){
                                 
                                    countMinibus = countMinibus+1;
                                  })
                                 },
                                child: Icon(
                                  Icons.add_circle_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              width: 30,
                              height: 30,
                              margin: EdgeInsets.only(top: 30, left: 10),
                              decoration: BoxDecoration(
                                  color: Colors.orange, shape: BoxShape.circle),
                              child: GestureDetector(
                                 onTap: () => {
                                  if (countMinibus > 0)
                                  setState((){
                                     countMinibus = countMinibus -1;
                                  })
                                 },
                                child: Icon(
                                  Icons.remove_circle_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text("$countMinibus"),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10, left: 10),
                              child: Text("Minibus"),
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


                // second card for counting
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
                              child: GestureDetector(
                                 onTap: () => {
                                  setState((){
                                    countLargeBus = countLargeBus+1;
                                  })
                                 },
                                child: Icon(
                                  Icons.add_circle_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              width: 30,
                              height: 30,
                              margin: EdgeInsets.only(top: 30, left: 10),
                              decoration: BoxDecoration(
                                  color: Colors.orange, shape: BoxShape.circle),
                              child: GestureDetector(
                                 onTap: () => {
                                  setState((){
                                    if (countLargeBus > 0)
                                    countLargeBus = countLargeBus-1;
                                  })
                                 },
                                child: Icon(
                                  Icons.remove_circle_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text("$countLargeBus"),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10, left: 10),
                              child: Text("Large Bus"),
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


              // fourth row
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

               // First card for counting
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
                              child: GestureDetector(
                                 onTap: () => {
                                  setState((){
                                 
                                    CountLightTruck= CountLightTruck+1;
                                  })
                                 },
                                child: Icon(
                                  Icons.add_circle_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              width: 30,
                              height: 30,
                              margin: EdgeInsets.only(top: 30, left: 10),
                              decoration: BoxDecoration(
                                  color: Colors.orange, shape: BoxShape.circle),
                              child: GestureDetector(
                                 onTap: () => {
                                  if (CountLightTruck > 0)
                                  setState((){
                                     CountLightTruck = CountLightTruck-1;
                                  })
                                 },
                                child: Icon(
                                  Icons.remove_circle_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text("$CountLightTruck"),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10, left: 10),
                              child: Text("Light Truck"),
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


                // second card for counting
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
                              child: GestureDetector(
                                 onTap: () => {
                                  setState((){
                                    CountMediumTruck = CountMediumTruck+1;
                                  })
                                 },
                                child: Icon(
                                  Icons.add_circle_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              width: 30,
                              height: 30,
                              margin: EdgeInsets.only(top: 30, left: 10),
                              decoration: BoxDecoration(
                                  color: Colors.orange, shape: BoxShape.circle),
                              child: GestureDetector(
                                 onTap: () => {
                                  setState((){
                                    if (countTampo > 0)
                                    CountMediumTruck = CountMediumTruck-1;
                                  })
                                 },
                                child: Icon(
                                  Icons.remove_circle_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text("$CountMediumTruck"),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10, left: 10),
                              child: Text("Medium truck"),
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


              // five row
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

               // First card for counting
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
                              child: GestureDetector(
                                 onTap: () => {
                                  setState((){
                                 
                                    CountHeavyTruck = CountHeavyTruck+1;
                                  })
                                 },
                                child: Icon(
                                  Icons.add_circle_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              width: 30,
                              height: 30,
                              margin: EdgeInsets.only(top: 30, left: 10),
                              decoration: BoxDecoration(
                                  color: Colors.orange, shape: BoxShape.circle),
                              child: GestureDetector(
                                 onTap: () => {
                                  setState((){
                                    if (CountHeavyTruck > 0)
                                     CountHeavyTruck = CountHeavyTruck-1;
                                  })
                                 },
                                child: Icon(
                                  Icons.remove_circle_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text("$CountHeavyTruck"),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10, left: 10),
                              child: Text("Heavy Truck"),
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


                // second card for counting
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
                              child: GestureDetector(
                                 onTap: () => {
                                  setState((){
                                    countTrailerTruck = countTrailerTruck+1;
                                  })
                                 },
                                child: Icon(
                                  Icons.add_circle_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              width: 30,
                              height: 30,
                              margin: EdgeInsets.only(top: 30, left: 10),
                              decoration: BoxDecoration(
                                  color: Colors.orange, shape: BoxShape.circle),
                              child: GestureDetector(
                                 onTap: () => {
                                  setState((){
                                    if (countTrailerTruck > 0)
                                    countTrailerTruck = countTrailerTruck-1;
                                  })
                                 },
                                child: Icon(
                                  Icons.remove_circle_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text("$countTrailerTruck"),
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
                 
                ],
              ),


              // sixth row
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

               // First card for counting
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
                              child: GestureDetector(
                                 onTap: () => {
                                  setState((){
                                 
                                    countBicycle = countBicycle+1;
                                  })
                                 },
                                child: Icon(
                                  Icons.add_circle_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              width: 30,
                              height: 30,
                              margin: EdgeInsets.only(top: 30, left: 10),
                              decoration: BoxDecoration(
                                  color: Colors.orange, shape: BoxShape.circle),
                              child: GestureDetector(
                                 onTap: () => {
                                  setState((){
                                    if (countBicycle > 0)
                                     countBicycle= countBicycle-1;
                                  })
                                 },
                                child: Icon(
                                  Icons.remove_circle_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text("$countBicycle"),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10, left: 10),
                              child: Text("Bus"),
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


                // second card for counting
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
                              child: GestureDetector(
                                 onTap: () => {
                                  setState((){
                                    countTampo = countTampo +1;
                                  })
                                 },
                                child: Icon(
                                  Icons.add_circle_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            Container(
                              width: 30,
                              height: 30,
                              margin: EdgeInsets.only(top: 30, left: 10),
                              decoration: BoxDecoration(
                                  color: Colors.orange, shape: BoxShape.circle),
                              child: GestureDetector(
                                 onTap: () => {
                                  setState((){
                                    if (countTampo > 0)
                                    countTampo = countTampo-1;
                                  })
                                 },
                                child: Icon(
                                  Icons.remove_circle_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text("$countTampo"),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10, left: 10),
                              child: Text("Tempo"),
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
        bottomNavigationBar:bottomNav()

    );
  }
}
