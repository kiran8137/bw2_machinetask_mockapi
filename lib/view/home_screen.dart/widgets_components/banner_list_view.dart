import 'package:flutter/material.dart';

class BannerListView extends StatelessWidget {
  const BannerListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      width: double.infinity,
      // color: Colors.green,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              height: 170,
              width: 380,
              decoration: BoxDecoration(
                  //  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  image: const DecorationImage(
                      image: AssetImage(
                          "assets/discount_banner.png"))),
            );
          },
          separatorBuilder: (context, index) =>
              const SizedBox(width: 10),
          itemCount: 2),
    );
  }
}

