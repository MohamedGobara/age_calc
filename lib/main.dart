//import 'dart:ffi';

import 'package:age_calc/age.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'text.dart';

void main() {
  runApp(age());
}

class age extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return myage();
  }
}

class myage extends State<age> {
  var mycon1 = TextEditingController();
  var mycon2 = TextEditingController();
  var mycon3 = TextEditingController();

  int y = 0;
  int m = 0;
  int d = 0;

  TextStyle s = TextStyle(
    inherit: true,
    color: Colors.deepPurple,
    backgroundColor: Colors.black,
    fontSize: 20,
     fontWeight: FontWeight.w700 ,
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Age Claculater"),
            ),
            body: SingleChildScrollView(

                child: Container(


              child: Column(

                children: <Widget>[



                  SizedBox(
                    height: 10,
                    //width: 70,


                  ),

                  Container(
                    margin: EdgeInsets.all(15),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 5, color: Colors.green),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        labelText: "Year Birth",
                        hintText: "Enter Your birth year",
                        hintStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.green,
                        ),
                        labelStyle:
                            TextStyle(fontSize: 30, color: Colors.deepPurple),
                      ),
                      controller: mycon1,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 5, color: Colors.blue),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        labelText: "Month Birth",
                        hintText: "Enter Your birth day",
                        hintStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.blue,
                        ),
                        labelStyle:
                            TextStyle(fontSize: 30, color: Colors.deepPurple),
                      ),
                      controller: mycon2,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(15),
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.red),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        labelText: "Day Birth",
                        hintText: "Enter Your Birth Day",
                        hintStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.red,
                        ),
                        labelStyle:
                            TextStyle(fontSize: 30, color: Colors.pinkAccent),
                      ),
                      controller: mycon3,
                      keyboardType: TextInputType.number,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(40),
                    child: FlatButton(
                      onPressed: () {
                        setState(() {
                          calc g = new calc();
                          y = g.year(int.parse(mycon1.text));
                          m = g.month(int.parse(mycon2.text));
                          d = g.days(int.parse(mycon3.text));
                        });
                      },
                      highlightColor: Colors.white,
                      height: 50,
                      color: Colors.green,
                      child: Text(
                        "My Age",
                        style: TextStyle(fontSize: 20),
                      ),
                      padding: EdgeInsets.all(10),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    child: Text(
                      'your Age is $y years old , $m Months old , and  $d Days old ',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(5, 10, 0, 10),
                      margin: EdgeInsets.all(20),
                      color: Colors.pinkAccent,
                      child: Row(
                        children: [
                          Container(
                            // padding: EdgeInsets.all(15),
                            child: Text(
                              "aplliction made with :  ",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          text("Mohamed Hussein", s)
                        ],
                      ))
                ],
              ),
            ))));
  }
}
