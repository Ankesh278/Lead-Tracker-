
import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:lead_tracker/notification_services.dart';

import 'Auth/SplashPage.dart';
import 'Auth/dummy2.dart';

//notification code started
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  print('Handling a background message ${message.messageId}');
}
//ended

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent
  ));
  runApp(MyApp());
}



class MyApp extends StatefulWidget {



  @override
  State<MyApp> createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {
  NotificationServices notificationServices=NotificationServices();

  void initState(){
    super.initState();

    //calling the method for shwoing the notification while the app is in the running state
    notificationServices.Firebaseinit();
    //calling the method to get the new token if the token is refreshed
    notificationServices.isTokenRefresh();

    //calling the request to request the permisssion from the device to the user
    notificationServices.request();

    notificationServices.getDeviceToken().then((value) {
      print("device token");
      print(value);


    });


  }



  @override

  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Lead Tracker',
      home: SplashScreen(),
    );
  }
}


