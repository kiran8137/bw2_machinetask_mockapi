import 'dart:convert';
import 'dart:developer';
import 'dart:isolate';

import 'package:bw2_machinetask_mock_api/controller/isolates/isolates.dart';
import 'package:bw2_machinetask_mock_api/model/notification_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class ApiServie {
  Future<List<NotificationModel>> fetchNotifications() async {
   
   ReceivePort receivePort = ReceivePort();



     

        try{
          await Isolate.spawn(fetchAndParse, receivePort.sendPort);
          final response = await receivePort.first;
          if(response is String){
            throw Exception(response);

          }
          return response as List<NotificationModel>;
        }catch (error){
          throw Exception('failed to fetch');
        }finally{
          receivePort.close();
        }

    // try {
    //   final response = await http.get(uri);
    //   if (response.statusCode == 200) {
    //     final body = jsonDecode(response.body);
    //     if (body["data"] == null) {
    //       return [];
    //     } else {
    //       Isolates isolate = Isolates(response.body);
    //       return await isolate.jsonParseInIsolate();
    //     }
        
    //   } else {
    //     throw Exception('some thing went wrong');
    //   }
    // } catch (error) {
    //   log(error.toString());
    //   throw Exception('some thing went wrong');
    // }
  }


  Future<void> fetchAndParse(SendPort sendPort)async{
 final uri = Uri.parse(
        "https://raw.githubusercontent.com/shabeersha/test-api/main/test-notifications.json");

    try{
        final response = await http.get(uri);

         if (response.statusCode == 200) {
        final body = jsonDecode(response.body);
        if (body["data"] != null) {
          List<NotificationModel> notifications = (body["data"] as List)
              .map((data) => NotificationModel.fromJson(data))
              .toList();
          sendPort.send(notifications);
        } else {
          sendPort.send(<NotificationModel>[]);
        }
      } else {
        sendPort.send('Failed to load data: ${response.statusCode}');


      }

    }catch(error){
      sendPort.send('error : $error');
    }
  }



}
