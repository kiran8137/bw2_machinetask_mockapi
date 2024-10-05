
import 'dart:convert';
import 'dart:developer';
import 'dart:isolate';

import 'package:bw2_machinetask_mock_api/model/notification_model.dart';

class Isolates{
Isolates(this.httpResponseBody);
 String httpResponseBody;


 Future<List<NotificationModel>> jsonParseInIsolate() async{

  final port = ReceivePort(); //creates a port to communication 
  await Isolate.spawn(jsonParse, port.sendPort);
  return await port.first;
 }


 Future<void> jsonParse(SendPort port)async{

  try{
    final decodedData = jsonDecode(httpResponseBody)["data"]  as List;
    final result = decodedData.map((notification)=> NotificationModel.fromJson(notification)).toList();
    Isolate.exit(port , result);
  }catch(error){
    log(error.toString());
  }
 }
}