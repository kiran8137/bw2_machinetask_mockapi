import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
     
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              child: Column(
                
                children: [
                  ImageIcon(AssetImage("assets/shop.png"),color: const Color.fromARGB(255, 116, 116, 116),),
                  Text('Home',
                    style: GoogleFonts.quicksand(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromARGB(255, 116, 116, 116)
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Column(
                children: [
                  ImageIcon(AssetImage("assets/cart.png"),color: const Color.fromARGB(255, 116, 116, 116)),
                  Text('Cart',
                    style: GoogleFonts.quicksand(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromARGB(255, 116, 116, 116)
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Column(
                children: [
                  ImageIcon(AssetImage("assets/myorder.png"),color: const Color.fromARGB(255, 116, 116, 116)),
                  Text('My Order',
                    style: GoogleFonts.quicksand(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromARGB(255, 116, 116, 116)
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              child: Column(
                children: [
                  ImageIcon(AssetImage("assets/account.png"),color: const Color.fromARGB(255, 116, 116, 116)),
                  Text('My Account',
                    style: GoogleFonts.quicksand(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromARGB(255, 116, 116, 116)
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
