import 'dart:convert';
import 'dart:developer';

import 'package:bw2_machinetask_mock_api/controller/isolates/isolates.dart';
import 'package:bw2_machinetask_mock_api/model/notification_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class ApiServie {
  Future<List<NotificationModel>> fetchNotifications() async {
    final uri = Uri.parse(
        "https://raw.githubusercontent.com/shabeersha/test-api/main/test-notifications.json");

    try {
      final response = await http.get(uri);
      if (response.statusCode == 200) {
        final body = jsonDecode(response.body);
        if (body["data"] == null) {
          return [];
        } else {
          Isolates isolate = Isolates(response.body);
          return await isolate.jsonParseInIsolate();
        }
        //final decodedData = jsonDecode(response.body)[ "data"][0] as Map<String, dynamic>;
        //debugPrint(decodedData.toString());
      } else {
        throw Exception('some thing went wrong');
      }
    } catch (error) {
      log(error.toString());
      throw Exception('some thing went wrong');
    }
  }
}
