import 'package:flutter/material.dart';

Widget appBarMain(BuildContext context){
    return AppBar(
      title: Image.asset("Assets/images/AppBar.jpg",fit: BoxFit.fill,),
      toolbarHeight: 60,
    );
}

InputDecoration textFieldInputDecoration(String hintText){
  return InputDecoration(
                   hintText : hintText,
                   hintStyle:  TextStyle(color: Colors.white54),
                 focusedBorder:UnderlineInputBorder(
                   borderSide:BorderSide(color:Colors.green),
                 ),
                 enabledBorder: UnderlineInputBorder(
                   borderSide: BorderSide(color: Colors.red),
                 ),
               );
}

TextStyle simpleTextStyle(var color){
  return TextStyle(
                   color: color,
                   fontSize: 25);
}

Container roundButton(String name,{height=80.0,var width=250.0,var tColor=Colors.white, var bColor= Colors.red,var radius=28.0,var borderColor = Colors.red,Function f }){
  return Container(
                  height: height,
                  width: width,
                  child: FlatButton(
                    onPressed: () { 
                      f();
                     },
                  child: Text(name,style: simpleTextStyle(tColor)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(radius),
                          side: BorderSide(color: borderColor )
                        ),
                        ),
                  decoration: BoxDecoration(
                    color: bColor,
                    borderRadius: BorderRadius.circular(30)
                  ),
                        );
}