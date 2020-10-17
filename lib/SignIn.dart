import 'package:MyApp/widget.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  SignIn({Key key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xf1f1F1F),
        appBar: appBarMain(context),
        body:ListView(
          children: [
             Container(
               height: MediaQuery.of(context).size.height-20,
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    children: [
                      TextField(
                        style: simpleTextStyle(Colors.blue),
                        decoration: textFieldInputDecoration("Email"),
                      ),
                      TextField(
                        style: simpleTextStyle(Colors.blue),
                        decoration: textFieldInputDecoration("Password"),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        alignment: Alignment.centerRight,
                        child: Container(
                          child: Text("Forgot Password?",
                              style: TextStyle(color: Colors.lightBlueAccent,fontSize: 15,fontStyle: FontStyle.italic)),
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
                      roundButton("Sign In with Google", width: 300.0),
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
        ) ,
       );
  }
}
