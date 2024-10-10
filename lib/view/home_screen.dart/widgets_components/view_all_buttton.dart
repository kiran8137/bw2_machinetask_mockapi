import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewAllStoreButtom extends StatelessWidget {
  const ViewAllStoreButtom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 40,
        width: 240,
        decoration: BoxDecoration(
          color: const Color.fromARGB(187, 68, 175, 71),
          borderRadius: BorderRadius.circular(10)
        ),
        child: Center(
          child: Text('View all stores',
          style: GoogleFonts.roboto(
            fontSize: 16,
            fontWeight:FontWeight.w500
          ),
          ),
        ),
      ),
    );
  }
}

