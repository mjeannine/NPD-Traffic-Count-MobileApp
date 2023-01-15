import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:npd_traffic_count_app/functioning_screens/home.dart';
import 'package:npd_traffic_count_app/services/models/token_provider.dart';
import 'package:npd_traffic_count_app/services/api.dart';
import 'package:npd_traffic_count_app/services/models/auth_account.dart';
import 'package:npd_traffic_count_app/widgets/progreeUD.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  late LoginRequest loginRequest;
  bool isApiCallProcess = false;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    loginRequest = LoginRequest();
    super.initState();
  }

 @override
  Widget build(BuildContext context) {
    return ProgressHUD(child: _loginUISetup(context), inAsyncCall: isApiCallProcess, opacity: 0.3);
  }

  Widget _loginUISetup(BuildContext context) {
    
    TokenProvider token = Provider.of<TokenProvider>(context);
    
    // *****Email field********
    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      // validator: (),
      onSaved: (input) {
        loginRequest.username = input;
      },
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
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.mail, color:Color.fromRGBO(255, 183, 77, 1),),
        contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
        hintText: "Email",
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color:Color.fromRGBO(255, 183, 77, 1)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color.fromRGBO(255, 183, 77, 1)),
          //  when the TextFormField in focused
                )          ),
    );

    // *****password field********
    final passwordField = TextFormField(
        autofocus: false,
        controller: passwordController,
        obscureText: true,
        keyboardType: TextInputType.emailAddress,
        // validator: (),
        onSaved: (input) {
          loginRequest.password = input;
        },
        validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter password';
        }
        return null;
        },
        textInputAction: TextInputAction.done,
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
                 
                ),));

     final loginButton = Material(
      elevation: 1,
      borderRadius: BorderRadius.circular(10),
        child: MaterialButton(
        color:Color.fromRGBO(239, 108, 0, 1),
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 15),
        
        minWidth: MediaQuery.of(context).size.width,
        
        onPressed: () {
      
          if(validateAndSave()){
            setState(() {
              isApiCallProcess = true;
            });
            login(loginRequest).then((value) {
              setState(() {
                isApiCallProcess = false;
              });
              if(value.token.isNotEmpty){
                Provider.of<TokenProvider>(context, listen: false).setToken(value.token);
                const snackBar =  SnackBar(content: Text("Logged in successfully!"), backgroundColor:Colors.orangeAccent,);
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                Navigator.pushNamed(context, '/home');
              }
              else{
                const snackBar = SnackBar(content: Text("Invalid credentials!"), backgroundColor: Color.fromARGB(255, 146, 41, 33),);
                 ScaffoldMessenger.of(context).showSnackBar(snackBar);
                 Navigator.pushNamed(context, '/login');
              }
            });
          }
         
        },
        child: Text(
                  "SIGN IN",
                  style: TextStyle(
                   color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                  ),
                ),
      ),
    );

    // ***********Our Displayer of defined fields********************
    return Scaffold(
      body: Center(
        child: buildLoginForm(emailField, passwordField, loginButton, context),
      ),
    );
  }

    SingleChildScrollView buildLoginForm(TextFormField emailField, TextFormField passwordField, Material loginButton, BuildContext context) {
    return SingleChildScrollView(
        child: Form(
           key: _formKey,
          child: Column(
            children: [
              Container(
                height: 504,
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
                        margin: const EdgeInsets.only(top: 60),
                        child: const Text(
                          "Traffic Count Survey",
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(top: 30),
                          child: Text(
                            "Phase 4",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontStyle: FontStyle.italic,
                                fontSize: 30),
                          )),
                      Container(
                        margin: EdgeInsets.only(right: 30, top: 80),
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "Sign in here!",
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
                margin: EdgeInsets.only(top:60, left: 20,right: 20),
              child: Column(
              children: [
                   emailField,
                   SizedBox(height: 40,),
                   passwordField,
                   SizedBox(height: 5,),
                    Container(
             
                alignment: Alignment.centerRight,
                child: GestureDetector(
                    child: Text("Forgot spot code",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.blue)),
                    onTap: () => {
                          //code for changing spot code
                        }),
              ),
              SizedBox(height: 40,),
              loginButton,
                  SizedBox(height: 5,),
               Container(
                margin: EdgeInsets.only(top: 40, right: 20),
                alignment: Alignment.center,
                child: GestureDetector(
                    child:   Text(
                        "Don't have an account? Sign up",
                       style: TextStyle(color: Colors.blue,fontSize:15,),
                      ),
                     onTap: () {
                          Navigator.pushNamed(context, '/register');
                        },),
              ),
              ],
             ),),
            
              Container(
                margin: EdgeInsets.only(top: 20, right: 20),
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
