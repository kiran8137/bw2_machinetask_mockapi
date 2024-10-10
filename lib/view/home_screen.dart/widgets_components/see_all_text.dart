import 'package:bw2_machinetask_mock_api/core/theme/color_theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Text seeAllText({required String text}) {
    return Text(
                        text,
                        style: GoogleFonts.quicksand(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: primaryColor),
                      );
  }