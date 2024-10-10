
import 'dart:convert';
import 'dart:developer';
import 'dart:isolate';

import 'package:bw2_machinetask_mock_api/model/notification_model.dart';
import 'package:flutter/cupertino.dart';

class Isolates{
Isolates(this.httpResponseBody);
 String httpResponseBody;


 Future<List<NotificationModel>> jsonParseInIsolate() async{

  final port = ReceivePort(); //creates a port to communication 
  await Isolate.spawn(jsonParse, port.sendPort);
  //  final result = await Isolate.run((){
  //   jsonParse();
  //  });
  return await port.first;
 //return resultl;
 }


 Future<void> jsonParse(SendPort port)async{

  try{
    final decodedData = jsonDecode(httpResponseBody)["data"]  as List;
    final result = decodedData.map((notification)=> NotificationModel.fromJson(notification)).toList();
    Isolate.exit(port , result);
    //return result;
  }catch(error){
    log(error.toString());
    throw Exception();
  }
 }
}