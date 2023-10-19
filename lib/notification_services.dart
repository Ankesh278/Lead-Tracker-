
import 'dart:math';

import 'package:app_settings/app_settings.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationServices{
  FirebaseMessaging messaging=FirebaseMessaging.instance;

  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin=FlutterLocalNotificationsPlugin();
  void request() async{
    NotificationSettings settings=await messaging.requestPermission(
      alert: true,
      announcement: true,
      badge: true,
      carPlay: true,
      criticalAlert: true,
      provisional: true,
      sound: true


    );
    if(settings.authorizationStatus == AuthorizationStatus.authorized){
      print("User granted permisssion");
    }else if(settings.authorizationStatus == AuthorizationStatus.provisional){
      print("User granted provisional permisssion");
    }
    else{
      AppSettings.openNotificationSettings();
       print("User denied");
    }

  }

  //for local notifications

  void initLocalNotification(BuildContext context,RemoteMessage message) async{
    var androidInitializationSettings=const AndroidInitializationSettings('@mipmap/ic_launcher');
    var iosInitializationSettings=DarwinInitializationSettings();

    var initializationSetting=InitializationSettings(
      android: androidInitializationSettings,
      iOS: iosInitializationSettings
    );
   await _flutterLocalNotificationsPlugin.initialize(
       initializationSetting,
     onDidReceiveNotificationResponse: (payload){

     }
   );

  }
  void Firebaseinit(){
   FirebaseMessaging.onMessage.listen((message) {
     print(message.notification!.title.toString());
     print(message.notification!.body.toString());
     print(message.notification!.body.toString());
     showNotification(message);

   });
  }

  AndroidNotificationChannel channel=AndroidNotificationChannel(
      Random.secure().nextInt(10000).toString(),
      'Hogh Importance notification',
    importance: Importance.max

  );

  //for showing the local notification
  Future<void> showNotification(RemoteMessage message) async{
    AndroidNotificationDetails androidNotificationDetails=AndroidNotificationDetails(
        channel.id.toString(),
        channel.name.toString(),
      channelDescription: 'Your channnel Description',
      importance: Importance.max,
      priority: Priority.max,
      ticker: 'Ticker'

    );
     NotificationDetails notificationDetails=NotificationDetails(
       android: androidNotificationDetails
     );
    Future.delayed(Duration.zero,(){
      _flutterLocalNotificationsPlugin.show(
          0,
          message.notification!.title.toString(),
          message.notification!.body.toString(),
          notificationDetails
      );

    });

  }

//for getting the tokens of the device
  Future<String> getDeviceToken() async{
    String? token=await messaging.getToken();
    return token!;

  }
  //if token is refreshed then this method is executed and gets the new token and listner listens the changement

  void isTokenRefresh() async{
    messaging.onTokenRefresh.listen((event) {
      event.toString();
      print("token refreshed");

    });
  }
}
