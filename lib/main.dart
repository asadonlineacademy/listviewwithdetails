import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listviewwithdetails/MoviesDesign.dart';
import 'package:listviewwithdetails/Shopping.dart';
import 'package:listviewwithdetails/TourApp.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Shopping App",
      theme: ThemeData(
        primaryColor: Colors.white
      ),
      home: MoviesActivity(),


    );
  }
}
class MyHomePage extends StatelessWidget {
   MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey,
          gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.bottomRight,
            colors: [
              Colors.orange.shade900,
              Colors.orange.shade800,
              Colors.orange.shade400,


            ]
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 80,
            ),
            Padding(padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Text("LOGIN",style: TextStyle(color: Colors.white,fontSize: 40),),
                SizedBox(
                  height: 10,
                ),
                Text("Welcome Back",style: TextStyle(color: Colors.white,fontSize: 18),)

              ],
            ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
                child:
            Container(
              margin: EdgeInsets.only(bottom: 50),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(60),topRight: Radius.circular(60),bottomRight: Radius.circular(60),bottomLeft: Radius.circular(60))
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromARGB(225, 95, 27, 3),
                            blurRadius: 20,
                            offset: Offset(0,10),
                          )
                        ]
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(30),
                            decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(color: Colors.grey.shade200))
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: "Email or Phone No",
                                hintStyle: TextStyle(color: Colors.black),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.deepOrange),
                                  borderRadius: BorderRadius.horizontal(left: Radius.zero,right: Radius.zero),)
                              ),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(30),
                            decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(color: Colors.grey.shade200))
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Password",
                                  hintStyle: TextStyle(color: Colors.black),
                                  border: OutlineInputBorder(borderRadius: BorderRadius.horizontal(left: Radius.zero,right: Radius.zero)
                                  ,borderSide: BorderSide(color: Colors.orange,width:2)),

                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text("Forgot Password",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                          SizedBox(height: 20,),
                          Container(
                            height: 50,
                            margin: EdgeInsets.symmetric(horizontal: 50),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.orange.shade900,
                            ),
                            child: Center(child: Text("Login",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                          ),
                          SizedBox(height: 10,),
                          Text("Continue With Social Media",style: TextStyle(color: Colors.black),),
                          SizedBox(height: 30,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color: Colors.blue
                                    ),
                                    child: Center(child: Text("Facebook",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                  ),
                                ),
                                SizedBox(width: 30,),
                                Expanded(
                                  child: Container(
                                    height: 50,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.black
                                    ),
                                    child: Center(child: Text("GitHub",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
            )
          ],

        ),
      ),





    );
  }
}
