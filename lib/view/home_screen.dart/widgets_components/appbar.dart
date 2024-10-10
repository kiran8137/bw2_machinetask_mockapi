
import 'package:bw2_machinetask_mock_api/core/theme/color_theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar appBarHome() {
    return AppBar(
       
        backgroundColor: Colors.white,
        toolbarHeight: 101,
        title: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            children: [
              SizedBox(
                width: 19,
                height: 22,
                child: Image.asset('assets/location_icon.png'),
              ),
              const SizedBox(width: 10),
              Text('ABCD, New Delhi',
                  style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.w700, fontSize: 17)),
              const Icon(
                Icons.keyboard_arrow_down,
                color: primaryColor,
              )
            ],
          ),
        ),
      );
  }