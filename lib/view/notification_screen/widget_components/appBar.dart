import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

 AppBar appBarNotification({required BuildContext context}) {
    return AppBar(
      automaticallyImplyLeading: false,
      toolbarHeight: 101,
      title: Row(
        children: [
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: SizedBox(
              height: 25,
              width: 25,
              child: Image.asset("assets/notif_page_arrow_back.png"),
            ),
          ),
          const SizedBox(width: 15),
          GestureDetector(
            onTap: () async {},
            child: Text(
              'Notifications',
              style: GoogleFonts.quicksand(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      //foregroundColor: Colors.white,
      shadowColor: Colors.white,
      elevation: 2,
      surfaceTintColor: Colors.transparent
    );
  }