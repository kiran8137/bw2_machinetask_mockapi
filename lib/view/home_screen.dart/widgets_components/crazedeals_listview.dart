import 'package:flutter/material.dart';

class CrazyDealsListView extends StatelessWidget {
  const CrazyDealsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: double.infinity,
     // color: Colors.green,
       child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
          return Container(
          width: 300,
          height: 150,
          decoration: BoxDecoration(
            //color: Colors.amber,
            borderRadius: BorderRadius.circular(5),
            image: const DecorationImage(image: AssetImage("assets/fav_banner.png"),fit: BoxFit.fill)
          ),
        );
        }, 
        separatorBuilder: (context , index)=> const SizedBox(width: 10,), 
        itemCount: 2
        ),
    );
  }
}

