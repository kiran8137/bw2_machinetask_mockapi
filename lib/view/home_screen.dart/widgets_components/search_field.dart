import 'package:bw2_machinetask_mock_api/view/notification_screen/notification_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
                color: const Color(0xFFEEEEEE),
                borderRadius: BorderRadius.circular(5)),
            height: 48,
            width: 240,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Search for products/stores',
                      style: GoogleFonts.quicksand(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF969696)),
                    ),
                    const Icon(
                      Icons.search_outlined,
                      color: Colors.green,
                    )
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, CupertinoDialogRoute(builder: (context)=> NotificationScreen(), context: context));
            },
            child: SizedBox(
              height: 25,
              width: 25,
              child: Image.asset('assets/notification_icon.png'),
            ),
          ),
          const Icon(
            Icons.local_offer_outlined,
            size: 30,
            color: Colors.orange,
          )
        ],
      ),
    );
  }
}

