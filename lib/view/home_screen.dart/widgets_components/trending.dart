
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class TrendingGridView extends StatelessWidget {
  const TrendingGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      width: double.infinity,
      // color: Colors.green,
      child: GridView.builder(
          scrollDirection: Axis.horizontal,
          gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 25.0,
            childAspectRatio: 1 / 2.3,
          ),
          itemCount: 6,
          itemBuilder: (context, index) {
            return SizedBox(
              height: 100,
              width: 1100,
              //  color: Colors.red,
              child: Row(
                children: [
                  Container(
                    width: 80,
                    height: 100,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: const DecorationImage(
                            image:
                                AssetImage("assets/icecream.png"),
                            fit: BoxFit.cover)),
                  ),
                  const SizedBox(width: 20),
                  const TrendingResDetail() // restaurant details text widget
                ],
              ),
            );
          }),
    );
  }
}














class TrendingResDetail extends StatelessWidget {
  const TrendingResDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:
          MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Mithas Bhandar',
          style: GoogleFonts.quicksand(
              fontSize: 18,
              fontWeight: FontWeight.w500),
        ),
        Text(
          'Sweets, North Indian',
          style: GoogleFonts.quicksand(
              fontSize: 12,
              fontWeight: FontWeight.w500),
        ),
        Text(
          '(store location) | 6.4 kms',
          style: GoogleFonts.quicksand(
              fontSize: 12,
              fontWeight: FontWeight.w400),
        ),
        Text(
          '★ 4.1 | 45 mins',
          style: GoogleFonts.quicksand(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.black),
        ),
      ],
    );
  }
}

