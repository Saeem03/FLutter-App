import 'package:MyApp/widget.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  SignUp({Key key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final formkey = GlobalKey<FormState>();
  TextEditingController userNameTextEditingController = new TextEditingController();
  TextEditingController emailtextEditingController = new TextEditingController();
  TextEditingController passwordtextEditingController = new TextEditingController();
  
  signMeUp(){
    try {
    if(formkey.currentState.validate()){
      print("Saeem");
    }
      
    } catch (e) {
      print(e.toString());
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xf1f1F1F),
      appBar: appBarMain(context),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height - 20,
            alignment: Alignment.center,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        Form(
                        key : formkey,
                        child:Column(
                        children: [
                        TextFormField(
                          validator: (val){
                            return (val.isEmpty || val.length < 2) ? "this will never work" : "ok";
                          },
                          controller: userNameTextEditingController,
                          style: simpleTextStyle(Colors.blue),
                          decoration: textFieldInputDecoration("UserName"),
                        ),
                        TextFormField(
                          validator: (val){
                            return RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(val)
                            ? null : "please enter correct mail";
                            
                          },
                          controller: emailtextEditingController,
                          style: simpleTextStyle(Colors.blue),
                          decoration: textFieldInputDecoration("Email"),
                        ),
                        TextFormField(
                          validator: (val){
                            return val.length > 6 ? null : "please enter passwrod 6+ chaarackter";
                          },
                          controller: passwordtextEditingController,
                          style: simpleTextStyle(Colors.blue),
                          decoration: textFieldInputDecoration("Password"),
                        ),
                        ],
                      ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        roundButton("Sign In",
                            width: 300.0,
                            bColor: Colors.blue[800],
                            borderColor: Colors.white),
                        SizedBox(
                          height: 20,
                        ),
                        roundButton("Sign In with Google", width: 300.0,f: signMeUp()),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Don't have account? ",
                              style: TextStyle(color: Colors.white),
                            ),
                            Text("Register Now",
                                style: TextStyle(
                                  color: Colors.white,
                                  decoration: TextDecoration.underline,
                                )),
                          ],
                        ),
                      ],
                    ))
              ],
            ),
          )
        ],
        
      ),
    );
  }
}
