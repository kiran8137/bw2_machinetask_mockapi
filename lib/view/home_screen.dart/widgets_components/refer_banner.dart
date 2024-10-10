import 'package:flutter/material.dart';

Container referBanner() {
    return Container(
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFF29D177),
                  borderRadius: BorderRadiusDirectional.circular(5),
                  image: const DecorationImage(image: AssetImage("assets/refer_banner.png"))
                ),
                
              );
  }
