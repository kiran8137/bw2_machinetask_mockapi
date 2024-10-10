 import 'package:bw2_machinetask_mock_api/core/theme/color_theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Center moreButton() {
    return Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'More',
                      style: GoogleFonts.quicksand(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: primaryColor),
                    ),
                    const Icon(
                      Icons.keyboard_arrow_down,
                      color: primaryColor,
                    )
                  ],
                ),
              );
  }