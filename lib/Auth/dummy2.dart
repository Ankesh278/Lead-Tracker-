

import 'dart:io';
import 'dart:math';

import 'package:app_settings/app_settings.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:lead_tracker/Auth/dummy2.dart';
import 'package:lead_tracker/notification_services.dart';

import 'dummy2.dart';
import 'dummy2.dart';

class dum extends StatefulWidget{
  dum({Key? key}) : super(key: key);
 


  @override
  State<dum> createState() => _createLeadState();
  

}
class _createLeadState extends State<dum> {
NotificationServices notify=NotificationServices();
String mess='';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo',
      home: Center(
        child: ElevatedButton(
          child: Text("Click"),
          onPressed: (){
            openDialog(context);
          },
        ),
      ),
    );
  }

   openDialog(context) {
    Container(alignment:Alignment.topRight,child: Text("Troop tracker",style: TextStyle(color: Colors.white,fontSize: 18),));
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            insetPadding: EdgeInsets.symmetric(horizontal: 7,vertical: 10),
            backgroundColor: Color(0xFF0D8173),
            shape: RoundedRectangleBorder(
                borderRadius:
                BorderRadius.circular(12.0)), //this right here
            child: Container(
              height: 147,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 0),
                    child: Column(
                      children: <Widget>[
                        const ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage("assets/images/user2.png"), ),
                          title: Text(
                            "Ankesh",
                            style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white),
                          ),
                          subtitle: Text('Business call',style: TextStyle(color: Colors.white,fontSize: 12),),
                          trailing: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Icon(Icons.cancel_rounded,color: Colors.white,),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 0),
                          decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(bottomLeft: Radius.circular(13),bottomRight: Radius.circular(13))),
                          height: 75 ,
                          width: double.infinity,
                          child: Expanded(
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 0),
                                  child: Row(
                                    children: [
                                      Icon(Icons.mobile_screen_share_outlined),
                                      Text("3232323232",style: TextStyle(color: Colors.black),),
                                      Expanded(
                                        child: Container(

                                            alignment: Alignment.topRight,
                                            child: Text("Unknown")),
                                      ),
                                      Icon(Icons.location_on_rounded)
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: const Row(
                                    children: [
                                      Expanded(child: Icon(Icons.call)),
                                      Expanded(child: Icon(Icons.message_outlined)),
                                      Expanded(child: ImageIcon(AssetImage("assets/images/profile3.png",))),
                                      Expanded(child: ImageIcon(AssetImage("assets/images/list.png",))),
                                      Expanded(child: ImageIcon(AssetImage("assets/images/whatsapp1.png",))),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                      margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
                                      alignment: Alignment.bottomRight,
                                      child: Text("by Cloudshope",style: TextStyle(fontSize: 10),)),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
  customDialog(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.transparent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                margin: EdgeInsets.only(left: 5),
                alignment: Alignment.topLeft,
                child: Text("Troop Tracker",)),
            Container(
              height: 170,
              width: double.infinity,
              child: Card (
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
                color: Colors.greenAccent[200],
                child: Column(
                  children: <Widget>[
                    const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/images/user2.png"), ),

                      title: Text(
                        "Ankesh",
                        style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.white),
                      ),
                      subtitle: Text('Business call',style: TextStyle(color: Colors.white,fontSize: 12),),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Icon(Icons.cancel_rounded,color: Colors.white,),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.only(bottomLeft: Radius.circular(13),bottomRight: Radius.circular(13))),
                      height: 80,
                      width: double.infinity,

                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 5),
                            child: Row(
                              children: [
                                Icon(Icons.mobile_screen_share_outlined),
                                Text("3232323232",style: TextStyle(color: Colors.black),),
                                Expanded(
                                  child: Container(

                                      alignment: Alignment.topRight,
                                      child: Text("Unknown")),
                                ),
                                Icon(Icons.location_on_rounded)
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 5, 0, 0),
                            child: const Row(
                              children: [
                                Expanded(child: Icon(Icons.call)),
                                Expanded(child: Icon(Icons.message_outlined)),
                                Expanded(child: ImageIcon(AssetImage("assets/images/profile3.png",))),
                                Expanded(child: ImageIcon(AssetImage("assets/images/list.png",))),
                                Expanded(child: ImageIcon(AssetImage("assets/images/whatsapp1.png",))),

                              ],
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.fromLTRB(0, 5, 5, 0),
                              alignment: Alignment.bottomRight,
                              child: Text("by Cloudshope",style: TextStyle(fontSize: 10),))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }

  showToast(){
    Fluttertoast.showToast(
        msg: 'Hello toast',
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM_RIGHT,
      timeInSecForIosWeb: 3,
      backgroundColor: Colors.green,
      textColor: Colors.white
    );
  }
}







