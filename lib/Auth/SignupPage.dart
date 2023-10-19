import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lead_tracker/Auth/SignInPage.dart';
import 'package:lead_tracker/utils/utils.dart';

import '../designs/customappbardesign.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {


  final _formkey=GlobalKey<FormState>();

  final namecontroller=TextEditingController();
  final emailcontroller=TextEditingController();
  final phonecontroller=TextEditingController();
  final passwordcontroller=TextEditingController();
  final addresscontroller=TextEditingController();
  final pincodecontroller=TextEditingController();

  FirebaseAuth _firebaseAuth=FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 55,
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
      body:Container(
        child: SingleChildScrollView(
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image.asset("assets/images/splash.png",height: 150,),
              Center(
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  width: 250,
                    height: 30,
                    child: Center(child: Text("Lead Tracker",style: TextStyle(color: Colors.black,fontSize: 20,fontStyle: FontStyle.normal,fontWeight: FontWeight.bold),))),
              ),

              Container(
                  height: 50,
                  margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
                  child: TextField(controller: namecontroller,keyboardType:TextInputType.name,decoration: InputDecoration(focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xFF1B5E20))),border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),label:Text("Name",style: TextStyle(color: Colors.black),),hintText: 'Enter name',prefixIcon: Icon(Icons.text_format_rounded),),)),

              Container(
                  height: 50,
                  margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
                  child: TextField(controller: emailcontroller,keyboardType:TextInputType.emailAddress,decoration: InputDecoration(focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xFF1B5E20))),border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),label:Text("email",style: TextStyle(color: Colors.black)),hintText: 'Enter email',prefixIcon: Icon(Icons.email_rounded),),)),

              Container(
                  height: 50,
                  margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
                  child: TextField(controller: phonecontroller,inputFormatters:[LengthLimitingTextInputFormatter(10)],keyboardType:TextInputType.phone,decoration: InputDecoration(focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xFF1B5E20))),border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),label:Text("Mobile",style: TextStyle(color: Colors.black)),hintText: 'Enter mobile no',prefixIcon: Icon(Icons.phone_android_rounded),),)),

              Container(
                  height: 50,
                  margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
                  child: TextField(controller: passwordcontroller,keyboardType:TextInputType.text,obscureText: true,decoration: InputDecoration(focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xFF1B5E20))),border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),label:Text("Password",style: TextStyle(color: Colors.black)),hintText: 'Enter password',prefixIcon: Icon(Icons.password_rounded),),)),

              Container(
                  height: 50,
                  margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
                  child: TextField(controller: addresscontroller,keyboardType:TextInputType.streetAddress,decoration: InputDecoration(focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xFF1B5E20))),border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),label:Text("Address",style: TextStyle(color: Colors.black)),hintText: 'Enter address',prefixIcon: Icon(Icons.location_searching_rounded),),)),

              Container(
                height: 50,
                  margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
                  child: TextField(controller: pincodecontroller,keyboardType:TextInputType.number,inputFormatters: [LengthLimitingTextInputFormatter(6)],decoration: InputDecoration(focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xFF1B5E20))),border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),label:Text("PinCode",style: TextStyle(color: Colors.black)),hintText: 'Enter pinCode',prefixIcon: Icon(Icons.pin_rounded),),)),
              Container(
                width: 100,
                margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: ElevatedButton(onPressed: (){
                  if(_formkey.currentState!.validate()) {
                    _firebaseAuth.createUserWithEmailAndPassword(
                        email: emailcontroller.text.toString(),
                        password: passwordcontroller.text.toString()
                    ).then((value) {

                    }).onError((error, stackTrace) {

                      Utils().toastMessage(error.toString());
                    });
                  }
                },
                    child: Center(child: Text("Signup")),
                  style: ElevatedButton.styleFrom(primary: Colors.green[900])
                ),
              ),
              Container(

                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     Text("Already have an account?"),

                      Container(
                        margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: GestureDetector(
                          child: Text("Login",style: TextStyle(color: Colors.green[900]),),
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Signin()));
                          },
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        ),
      ),

    );
  }
}

