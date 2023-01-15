import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:npd_traffic_count_app/functioning_screens/home.dart';
import 'package:npd_traffic_count_app/services/models/token_provider.dart';
import 'package:npd_traffic_count_app/services/api.dart';
import 'package:npd_traffic_count_app/services/models/auth_account.dart';
import 'package:npd_traffic_count_app/widgets/progreeUD.dart';

class  RegisterScreen extends StatefulWidget {
  const  RegisterScreen({Key? key}) : super(key: key);

   @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  // form key
  final _formKey = GlobalKey<FormState>();
  String _dropdownValue = '';

  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController identityController= TextEditingController();
  final TextEditingController spotController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmController = TextEditingController();

  late Account registerRequest;
  bool isApiCallProcess = false;
   
 @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    registerRequest = Account(firstName: '', lastName: '', email: '', phone: '', identity: '',spot: '');
    super.initState();
  }

@override
  Widget build(BuildContext context) {
    return ProgressHUD(child: _registerUISetup(context), inAsyncCall: isApiCallProcess, opacity: 0.3);
  }
   
  Widget _registerUISetup(BuildContext context) {
    // *****first Name field********
    final firstNameField = TextFormField(
      cursorColor: Colors.orange.shade300,
      autofocus: false,
      controller: firstNameController,
      keyboardType: TextInputType.name,
      // validator: (),
      onSaved: (value) {
        firstNameController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        
        prefixIcon: const Icon(
          Icons.person,
          color: Colors.orange,
        ),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "First name",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color.fromRGBO(255, 183, 77, 1),),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromRGBO(255, 183, 77, 1),),

          //  when the TextFormField in focused
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'First name is required';
        }
        return null;
  },
      onChanged: (value) {},
    );
    // *****last Name field********
    final lastNameField = TextFormField(
      cursorColor: Colors.orange.shade300,
      autofocus: false,
      controller: lastNameController,
      keyboardType: TextInputType.name,
      // validator: (),
      onSaved: (value) {
        lastNameController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.person,
          color: Color.fromRGBO(255, 183, 77, 1),
        ),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Last name",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color.fromRGBO(255, 183, 77, 1),),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromRGBO(255, 183, 77, 1),),

          //  when the TextFormField in focused
        ),
      ),
    );

// Gender

void dropdownCallback(String? selectedValue) {
  if (selectedValue is String) {
    setState(() {
      _dropdownValue = selectedValue;
    });
  }
}

// Gender dropdown
final genderDropdown = DropdownButtonFormField(
  items: const [
    DropdownMenuItem(child: Text("Gender"), value: '',),
    DropdownMenuItem(child: Text("Male"), value: 'M',),
    DropdownMenuItem(child: Text("Female"), value: 'F'),
  ],
  value: _dropdownValue,
  onChanged: dropdownCallback,
  validator: (value) {
        if (value == null || value.toString() == '') {
          return 'Gender is required';
        }
        return null;
  },
  onSaved: (input) {
        genderController.text = input!.toString();
      },
  isExpanded: true,
  decoration: InputDecoration(
         
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        border: OutlineInputBorder(
          
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color.fromRGBO(255, 183, 77, 1)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color:Color.fromRGBO(255, 183, 77, 1)),

          //  when the TextFormField in focused
        ),
      ),
  
  );

    // *****Email field********
    final emailField = TextFormField(
      
      cursorColor: Colors.orange.shade300,
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Email is required';
        }
        // using regular expression
        if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
          return "Please enter a valid email address";
        }
        return null;
  },
      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        
        prefixIcon: const Icon(
          Icons.mail,
          color: Color.fromRGBO(255, 183, 77, 1),
        ),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color.fromRGBO(255, 183, 77, 1)),
        ),
         focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color:  Color.fromRGBO(255, 183, 77, 1)),

          //  when the TextFormField in focused
        ),
      ),
    );

    // phone number ***********
    final phoneField = TextFormField(
      cursorColor: Colors.orange.shade300,
      autofocus: false,
      controller: phoneNumberController,
      keyboardType: TextInputType.phone,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Phone Number is required';
        }
        return null;
  },
      onSaved: (value) {
        phoneNumberController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.phone,
          color: Color.fromRGBO(255, 183, 77, 1),
        ),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Phone number",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color.fromRGBO(255, 183, 77, 1)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromRGBO(255, 183, 77, 1)),

          //  when the TextFormField in focused
        ),
      ),
    );



    // *****Id number********
    final identityField = TextFormField(
      cursorColor: Colors.orange.shade300,
      autofocus: false,
      controller: identityController,
      keyboardType: TextInputType.name,
      // validator: (),
      onSaved: (value) {
        identityController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.person_sharp,
          color: Color.fromRGBO(255, 183, 77, 1),
        ),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Id number",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color:Color.fromRGBO(255, 183, 77, 1)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromRGBO(255, 183, 77, 1)),

          //  when the TextFormField in focused
        ),
      ),
    );


     // *****spot********
    final spotField = TextFormField(
      cursorColor: Colors.orange.shade300,
      autofocus: false,
      controller: spotController,
      keyboardType: TextInputType.name,
      // validator: (),
      onSaved: (value) {
        spotController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.numbers,
          color: Color.fromRGBO(255, 183, 77, 1),
        ),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Spot code",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color:Color.fromRGBO(255, 183, 77, 1)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromRGBO(255, 183, 77, 1)),

          //  when the TextFormField in focused
        ),
      ),
    );


    // *****password field********
    final passwordField = TextFormField(
        autofocus: false,
        controller: passwordController,
        obscureText: true,
        keyboardType: TextInputType.name,
        validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Password is required';
        }
        return null;
  },
        onSaved: (value) {
          passwordController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.vpn_key,
            color: Color.fromRGBO(255, 183, 77, 1),
            semanticLabel: "Password",
          ),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Color.fromRGBO(255, 183, 77, 1)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color:Color.fromRGBO(255, 183, 77, 1)),

            //  when the TextFormField in focused
          ),
        ));

        // *****Confirm password********
    final confirmPasswordField = TextFormField(
        autofocus: false,
        controller: confirmController,
        obscureText: true,
        keyboardType: TextInputType.name,
         validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Confirm password is required';
        }
        if (value != passwordController.text) {
          return 'Password does not match';
        }
        return null;
  },
        onSaved: (value) {
          confirmController.text = value!;
        },
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.vpn_key,
            color:Color.fromRGBO(255, 183, 77, 1),
            semanticLabel: "Password",
          ),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Confirm Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color:Color.fromRGBO(255, 183, 77, 1)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromRGBO(255, 183, 77, 1)),

            //  when the TextFormField in focused
          ),
        ));

    final signupButton = Material(
      elevation: 1,
      borderRadius: BorderRadius.circular(10),
      color:Color.fromRGBO(239, 108, 0, 1),
      child: MaterialButton(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 15),
        minWidth: MediaQuery.of(context).size.width,
        onPressed: () {
          if(validateAndSave()){
            setState(() {
              isApiCallProcess = true;
            });
            createAccount(firstNameController.text, 
            lastNameController.text, 
            genderController.text, 
            phoneNumberController.text,
            identityController.text,
            spotController.text,
            emailController.text, 
            passwordController.text,
            confirmController.text
            ).then((value) {
              setState(() {
                isApiCallProcess = false;
              });
              if(value.apiToken!.isNotEmpty){
                const snackBar =  SnackBar(content: Text("Account registered successfully!"), backgroundColor: Color.fromARGB(255, 220, 181, 98),);
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                Navigator.pushNamed(context, '/login');
              }
              else{
                const snackBar = SnackBar(content: Text("Something went wrong!"), backgroundColor: Color.fromARGB(255, 179, 126, 13),);
                 ScaffoldMessenger.of(context).showSnackBar(snackBar);
                 Navigator.pushNamed(context, '/register');
              }
            });
            
          }
        },
        child:  Text(
                  "SIGN UP",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
      ),
    );
 return Scaffold(
      body: Center(
        child: buildSingleView(
                firstNameField,
                lastNameField,
                genderDropdown,
                phoneField,
                identityField,
                spotField,
                emailField,
                passwordField,
                confirmPasswordField,
                signupButton),
      ),
    );
  }
   SingleChildScrollView buildSingleView(
      TextFormField firstNameField,
      TextFormField lastNameField,
      DropdownButtonFormField genderDropdown,
      TextFormField phoneField,
      TextFormField identityField,
      TextFormField spotField,
      TextFormField emailField,
      TextFormField passwordField,
      TextFormField confirmPasswordField,
      Material signupButton) {
    return  SingleChildScrollView(
        child: Form(
           key: _formKey,
          child: Column(
            children: [
              Container(
                height: 325,
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

           Container(
            margin: EdgeInsets.only(top:10, left: 20,right: 20),
               child:Column(children: [
                SizedBox(height: 5,),
              
                 firstNameField,
                  SizedBox(height: 5,),
                 lastNameField,
           
            
                  SizedBox(height: 5,),
                   genderDropdown,
                
          
               SizedBox(height: 5,),
               phoneField,
               SizedBox(height: 5,),
                identityField,
                
          
                // accessing spot code
                SizedBox(height: 5,),
                 spotField,
                  
                
                
          
               // Email field
                 SizedBox(height: 5,), 
                 emailField,
                
          
              // Password
                SizedBox(height: 5,),
                passwordField,
                
                
                 SizedBox(height: 5,),
          
                //  confirm password
              confirmPasswordField,
              
                  SizedBox(height: 10,),
            
                   signupButton,
                    
                    
    
              
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
              ]),
                  ),
        
            ],
          ),
        ),
      );

  }
  bool validateAndSave() {
    final form = _formKey.currentState;
    if(form!.validate()){
      form.save();
      return true;
    }
    return false;
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
