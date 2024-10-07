import 'package:bw2_machinetask_mock_api/controller/api_services/api_services.dart';
import 'package:bw2_machinetask_mock_api/view/home_screen.dart/home_screen.dart';
import 'package:bw2_machinetask_mock_api/view/notification_screen/notification_screen.dart';
import 'package:bw2_machinetask_mock_api/view/statemanagement/bloc/notification_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotificationBloc(apiServie: ApiServie()),
      //..add(GetNotificationsEvent()),
      child:   MaterialApp(
          debugShowCheckedModeBanner: false, home: HomeScreen()),
    );
  }
}
