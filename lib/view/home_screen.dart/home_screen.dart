import 'package:bw2_machinetask_mock_api/core/theme/color_theme/colors.dart';
import 'package:bw2_machinetask_mock_api/view/notification_screen/notification_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<String> categoryImages = [
    "assets/food_delivery.png",
    "assets/medicine.png",
    "assets/petsupplies.png",
    "assets/gifts.png",
    "assets/meat.png",
    "assets/cosmetic.png",
    "assets/stationery.png",
    "assets/stores.png"
  ];

  final List<String> categories = [
    'Food Delivery',
    'Medicines',
    'Pet Supplies',
    'Gifts',
    'Meat',
    'Cosmetic',
    'Stationery',
    'Stores'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: Container(
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
        ),
        //  BottomNavigationBar(
        //   backgroundColor: Colors.white,
        //   unselectedItemColor: Colors.black,
        //   items: const <BottomNavigationBarItem>[
        //     BottomNavigationBarItem(
        //        icon: ImageIcon(AssetImage("assets/shop.png"), color: Colors.black,),
        //        label: 'Home'
        //       ),
        //        BottomNavigationBarItem(
        //        icon: ImageIcon(AssetImage("assets/cart.png")),
        //        label: 'Cart'
        //       ),
        //        BottomNavigationBarItem(
        //        icon: ImageIcon(AssetImage("assets/myorder.png")),
        //        label: 'My Order'
        //       ),
        //        BottomNavigationBarItem(
        //        icon: ImageIcon(AssetImage("assets/account.png")),
        //        label: 'My Order'
        //       )
        //   ]
        //   ),
        appBar: AppBar(
          // leading:  SizedBox(
          //       width: 19,
          //       height: 22,
          //       child: Image.asset('assets/location_icon.png'),
          //     ),
          backgroundColor: Colors.white,
          toolbarHeight: 101,
          title: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                SizedBox(
                  width: 19,
                  height: 22,
                  child: Image.asset('assets/location_icon.png'),
                ),
                const SizedBox(width: 10),
                Text('ABCD, New Delhi',
                    style: GoogleFonts.quicksand(
                        fontWeight: FontWeight.w700, fontSize: 17)),
                const Icon(
                  Icons.keyboard_arrow_down,
                  color: primaryColor,
                )
              ],
            ),
          ),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
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
                ),
                const SizedBox(height: 40),
                Text(
                  'What would you like to do today?',
                  style: GoogleFonts.quicksand(
                      fontSize: 18, fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 10),
                Container(
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
                ),
                Center(
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
                ),
                const SizedBox(height: 10),
                Text(
                  'Top Picks for you',
                  style: GoogleFonts.quicksand(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
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
                ),
                const SizedBox(height: 30),
                Container(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Trending',
                          style: GoogleFonts.quicksand(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          'See all',
                          style: GoogleFonts.quicksand(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: primaryColor),
                        ),
                      ],
                    )),
                const SizedBox(height: 10),
                Container(
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
                        return Container(
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
                              Column(
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
                              )
                            ],
                          ),
                        );
                      }),
                ),

                SizedBox(height: 20),

                Text('Craze deals',
                style: GoogleFonts.quicksand(
                  fontSize: 20,
                  fontWeight: FontWeight.w700
                ),
                ),
                SizedBox(height: 10),
                Container(
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
                        image: DecorationImage(image: AssetImage("assets/fav_banner.png"),fit: BoxFit.fill)
                      ),
                    );
                    }, 
                    separatorBuilder: (context , index)=> SizedBox(width: 10,), 
                    itemCount: 2
                    ),
                ),

                SizedBox(height: 20),

                Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xFF29D177),
                    borderRadius: BorderRadiusDirectional.circular(5),
                    image: DecorationImage(image: AssetImage("assets/refer_banner.png"))
                  ),
                  // child: Padding(
                  //   padding: const EdgeInsets.all(15.0),
                  //   child: Column(
                  //     crossAxisAlignment: CrossAxisAlignment.start,
                  //     children: [
                  //       Container(
                  //         margin: EdgeInsets.only(left: 10),
                  //         child: Text('Refer & Earn',
                  //         style: GoogleFonts.quicksand(
                  //           fontWeight: FontWeight.w700,
                  //           fontSize: 18,
                  //           color: Colors.white
                  //         ),
                          
                  //         ),
                  //       ),
                    
                  //       Row(
                           
                  //         crossAxisAlignment: CrossAxisAlignment.start,
                  //         children: [
                  //           Text('Invite your friends & earn 15% off',
                  //           style: GoogleFonts.quicksand(
                  //             fontWeight: FontWeight.w500,
                  //             fontSize: 15,
                  //             color: Colors.white
                  //           ),
                  //           ),
                  //           SizedBox(width: 5),
                  //           Icon(Icons.arrow_circle_right, color: Colors.white,),
                  //           SizedBox(
                  //             height: 30,
                  //             width: 30,
                  //             child: Image.asset('assets/gift_refer.png'),
                  //           )
                  //         ],
                  //       )
                  //     ],
                  //   ),
                  // ),


                ),

                SizedBox(height: 30),

                Container(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Nearby stores',
                          style: GoogleFonts.quicksand(
                              fontSize: 20, fontWeight: FontWeight.w700),
                        ),
                        Text(
                          'See all',
                          style: GoogleFonts.quicksand(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: primaryColor),
                        ),
                      ],
                    ),
                    ),

                  SizedBox(height: 10),

                  Container(
                    width: double.infinity,
                    height: 300,
                    child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      separatorBuilder: (context, index) => SizedBox(height: 5),
                      itemCount: 2,
                      itemBuilder: (context, index) => 
                       Container(
                        height: 150,
                        width: double.infinity,
                        //color: Colors.red,
                        child: Row(
                          
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 80,
                              width: 70,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(5),
                                image: DecorationImage(image: AssetImage('assets/dish.png'),fit: BoxFit.cover)
                              ),
                      
                            ),
                      
                            SizedBox(width: 20),
                      
                            Expanded(
                              child: Container(
                                //color: Colors.amber,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                         
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text('Freshly Baker',
                                            style: GoogleFonts.quicksand(
                                              fontSize: 17,
                                              fontWeight: FontWeight.w700
                                            ),
                                            ),
                                             Text('Sweets, North Indian',
                                            style: GoogleFonts.quicksand(
                                              fontSize: 13,
                                              fontWeight: FontWeight.w500
                                            ),
                                            ),
                                    
                                             Text('Site No-1 | 6.4 kms',
                                            style: GoogleFonts.quicksand(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w500
                                            ),
                                            ),
                                    
                                            SizedBox(height: 10),
                                    
                                            Container(
                                              height: 16,
                                              width: 48,
                                             
                                              decoration: BoxDecoration(
                                                 color: Color.fromARGB(255, 233, 233, 233),
                                                 borderRadius: BorderRadius.circular(2)
                                              ),
                                              child: Center(child: Text('Top Store',
                                              style: GoogleFonts.roboto(
                                                fontSize: 8,
                                                fontWeight:FontWeight.w500
                                              ),
                                              ),),
                                            )
                                          ],
                                        ),
                                    
                                        Container(
                                          height: 50,
                                         // width: 50,
                                         // color: Colors.red,
                                          child: Column(
                                             
                                            children: [
                                              Text('★ 4.1',
                                              style: GoogleFonts.quicksand(
                                                fontSize: 15,
                                                fontWeight: FontWeight.w500
                                              ),
                                              ),
                                              Text('45 mins',
                                              style: GoogleFonts.quicksand(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.orange
                                              ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                      
                                    Divider(),
                      
                                     
                                       Container(
                                        child: Row(
                                          children: [
                                             SizedBox(
                                              height: 15,
                                              width: 15,
                                              child: Image.asset('assets/offer.png'),
                                             ),
                                             Text('Upto 10% OFF',
                                             style: GoogleFonts.quicksand(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w700
                                             ),
                                             ),
                                             
                                             SizedBox(
                                              height: 15,
                                              width: 15,
                                              child: Image.asset('assets/items.png'),
                                             ),
                                               Text('3400+ items available',
                                             style: GoogleFonts.quicksand(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w700
                                             ),
                                             ),
                                             
                                          ],
                                        ),
                                      ),
                                    
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),

                    
                  ),

                  SizedBox(height: 20),

                Center(
                  child: Container(
                    height: 40,
                    width: 240,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(187, 68, 175, 71),
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
                )
                
              ],
            ),
          ),
        )));
  }
}
