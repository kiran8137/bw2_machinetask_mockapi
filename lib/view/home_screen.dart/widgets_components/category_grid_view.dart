import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryGridView extends StatelessWidget {
  const CategoryGridView({
    super.key,
    required this.categoryImages,
    required this.categories,
  });

  final List<String> categoryImages;
  final List<String> categories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      //color: Colors.grey,
      child: GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 30.0,
          childAspectRatio: 1.0,
        ),
        itemCount: categoryImages.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                  width: 50,
                  height: 50,
    
                  // child: Image.asset(categoryImages[index],fit: BoxFit.contain,),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.10),
                          spreadRadius: 0,
                          blurRadius: 2,
                          offset: const Offset(0, 4)),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    image: DecorationImage(
                      image: AssetImage((categoryImages[index])),
                    ),
                  )),
              const SizedBox(height: 5),
              Center(
                child: Text(
                  categories[index],
                  style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.w500,
                    fontSize: 10,
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}



