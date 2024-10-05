import 'package:flutter/foundation.dart';

class NotificationModel {
  final String image;
  final String title;
  final String body;
  final String timeStamp;

  NotificationModel(
      {required this.image,
      required this.title,
      required this.body,
      required this.timeStamp});


  
  factory NotificationModel.fromJson(Map<String, dynamic> notification){
  return NotificationModel(
    image: notification["image"], 
    title: notification["title"], 
    body: notification["body"],
    timeStamp: notification["timestamp"],
     
    );
}
}


