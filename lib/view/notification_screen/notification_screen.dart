 
import 'package:bw2_machinetask_mock_api/core/constants/constants.dart';
import 'package:bw2_machinetask_mock_api/view/notification_screen/widget_components/appBar.dart';
import 'package:bw2_machinetask_mock_api/view/notification_screen/widget_components/notification.dart';
import 'package:bw2_machinetask_mock_api/view/statemanagement/bloc/notification_bloc.dart';
import 'package:flutter/material.dart';
 
 
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
   

  final ScrollController scrollController = ScrollController();
//   static const  platform = MethodChannel('method_channel');

// var result = platform.invokeMethod('method_chaneel');

  @override
  void initState() {
     
    BlocProvider.of<NotificationBloc>(context).add(GetNotificationsEvent());
    super.initState();
  }

  

 
  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarNotification(context: context),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 15),
            SizedBox(
                width: double.infinity,
                //height: double.infinity,
                height: 600,
                //color: Colors.red,
                child: BlocBuilder<NotificationBloc, NotificationState>(
                  builder: (context, state) {
                    if (state is NotificationInitial) {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    } else if (state is NotificationErrorState) {
                      return const Center(
                        child: Text('something went wrong'),
                      );
                    } else if (state is NotificationSuccess) {
                      return Scrollbar(
                        controller: scrollController,
                        thickness: 10,
                        radius: const Radius.circular(8),
                        child: ListView.separated(
                            itemBuilder: (context, index) {
                              final notification = state.notifications[index];
                              //final notficationImage = notificationImages[index];
                              return NotificationWidget(notification: notification);
                            },
                            separatorBuilder: (context, index) => const Divider(
                                  color: Color.fromARGB(87, 158, 158, 158),
                                ),
                            itemCount: state.notifications.length),
                      );
                    }
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                )),
          ],
        ),
      ),
    );
  }

 
}

