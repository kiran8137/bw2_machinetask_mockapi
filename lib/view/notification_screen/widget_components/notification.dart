

import 'package:bw2_machinetask_mock_api/model/notification_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({
    super.key,
    required this.notification, 
  });

  final NotificationModel notification;
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: 8, left: 15, right: 15, bottom: 8),
      child: Container(
        //height: 89,
        width: double.infinity,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(
              top: 8.0, left: 8),
          child: Row(
            crossAxisAlignment:
                CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 5),
                height: 30,
                width: 30,
               // color: Colors.green,
                //child:  Image.asset(notificationImage),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 280,
                    child: Text(
                      notification.title,
                      //'Get up to INR 100/-cashback using googlepay',
                      style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),
                  ),
                  SizedBox(
                    width: 280,
                    child: Text(
                      notification.body,
                      //'Your order containg 2 items will be delivered within the prescribed time',
                      style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w400,
                          fontSize: 13),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    '57 mins ago',
                    style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w400,
                        fontSize: 12),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
