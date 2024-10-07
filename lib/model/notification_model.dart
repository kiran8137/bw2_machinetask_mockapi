import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

class NotificationModel extends Equatable{
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
    image: notification["image"] ?? '', 
    title: notification["title"] ?? '', 
    body: notification["body"] ?? '',
    timeStamp: notification["timestamp"] ?? '',
     
    );
}

  @override
  // TODO: implement props
  List<Object?> get props => [image , title , body , timeStamp];
}


