import 'package:bw2_machinetask_mock_api/core/theme/color_theme/colors.dart';
import 'package:bw2_machinetask_mock_api/view/home_screen.dart/widgets_components/appbar.dart';
import 'package:bw2_machinetask_mock_api/view/home_screen.dart/widgets_components/banner_list_view.dart';
import 'package:bw2_machinetask_mock_api/view/home_screen.dart/widgets_components/bottom_navigation_bar.dart';
import 'package:bw2_machinetask_mock_api/view/home_screen.dart/widgets_components/category_grid_view.dart';
import 'package:bw2_machinetask_mock_api/view/home_screen.dart/widgets_components/crazedeals_listview.dart';
import 'package:bw2_machinetask_mock_api/view/home_screen.dart/widgets_components/more_button.dart';
import 'package:bw2_machinetask_mock_api/view/home_screen.dart/widgets_components/nearby_stores.dart';
import 'package:bw2_machinetask_mock_api/view/home_screen.dart/widgets_components/refer_banner.dart';
import 'package:bw2_machinetask_mock_api/view/home_screen.dart/widgets_components/search_field.dart';
import 'package:bw2_machinetask_mock_api/view/home_screen.dart/widgets_components/see_all_text.dart';
import 'package:bw2_machinetask_mock_api/view/home_screen.dart/widgets_components/title_heading.dart';
import 'package:bw2_machinetask_mock_api/view/home_screen.dart/widgets_components/trending.dart';
import 'package:bw2_machinetask_mock_api/view/home_screen.dart/widgets_components/view_all_buttton.dart';
import 'package:flutter/material.dart';

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
        
        
        appBar: appBarHome(),
        bottomNavigationBar:const BottomNavBar(),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SearchTextField(),
                const SizedBox(height: 40),
                const TitleHeading(title: 'What would you like to do today?'),
                const SizedBox(height: 10),
                CategoryGridView(categoryImages: categoryImages, categories: categories),
                moreButton(),
                const SizedBox(height: 10),
                
                const TitleHeading(title: 'Top Picks for you',),
                const SizedBox(
                  height: 10,
                ),
                const BannerListView(),
                const SizedBox(height: 30),
                SizedBox(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                       
                        const TitleHeading(title: 'Trending'),
                        seeAllText(text: 'See all'),
                      ],
                    )
                    ),
                const SizedBox(height: 10),
                const TrendingGridView(),

                const SizedBox(height: 20),

                 
                const TitleHeading(title: 'Craze deals'),
                const SizedBox(height: 10),
                const CrazyDealsListView(),

                const SizedBox(height: 20),

                referBanner(),

                const SizedBox(height: 30),

                SizedBox(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        
                         const TitleHeading(title: 'Nearby stores'),
                        seeAllText(text: 'See all'),
                      ],
                    ),
                    ),

                  const SizedBox(height: 10),

                 const NearbyStoresListView(),

                  const SizedBox(height: 20),

                const ViewAllStoreButtom()
                
              ],
            ),
          ),
        )));
  }

 
}

