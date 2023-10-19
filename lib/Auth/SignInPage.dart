import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lead_tracker/HomeScreen.dart';

import '../designs/customappbardesign.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Container(
            margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: BackButton(color: Colors.black,)),
        automaticallyImplyLeading: false,
        toolbarHeight: 40,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        flexibleSpace: ClipPath(
          clipper: AppbarCustomClipper(),
          child: Container(
            height: 130,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors:[
                      Color(0xFF1B5E20),
                      Color(0xFF1B5E20)
                    ]
                )
            ),
            child: Center(child: Text("Lead Tracker",style: TextStyle(color: Colors.white,fontSize: 20,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),)),

          ),
        ),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
                height: 150,
                child: Image.asset('assets/images/iconn.png')),
            Center(
              child: Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  width: 250,
                  height: 40,
                  child: Center(child: Text("Lead Tracker",style: TextStyle(color: Colors.black,fontSize: 20,fontStyle: FontStyle.normal,fontWeight: FontWeight.bold),))),
            ),

            Container(
                height: 50,
                margin: EdgeInsets.fromLTRB(30, 30, 30, 0),
                child: TextField(keyboardType:TextInputType.emailAddress,decoration: InputDecoration(focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xFF1B5E20))),border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),label:Text("Email",style: TextStyle(color: Colors.black),),hintText: 'Enter email',prefixIcon: Icon(Icons.email_rounded),),)),

            Container(
                height: 50,
                margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
                child: TextField(keyboardType:TextInputType.text,obscureText: true,decoration: InputDecoration(focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xFF1B5E20))),border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),label:Text("password",style: TextStyle(color: Colors.black),),hintText: 'Enter password',prefixIcon: Icon(Icons.password_rounded),),)),

            Container(
              width: 100,
              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
              },
                  child: Text("Signup"),
                  style: ElevatedButton.styleFrom(primary: Colors.green[900])
              ),
            ),



          ],
        ),
      ),
    );
  }
}

