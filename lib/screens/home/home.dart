import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:food_delivery_app/screens/home/homeWidgets/foodList.dart';
import 'package:food_delivery_app/screens/home/homeWidgets/foodListView.dart';
import '../../widgets/CustomAppbar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'homeWidgets/restaurant_info.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selected = 0;
  final restaurant = Restaurant.generateRestaurants();
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kbackground,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(child: CustomAppBar(Icons.search, Icons.arrow_back_ios_outlined)),
            SizedBox(
              height: 30,
            ),
            RestaurantInfo(),
            FoodList(selected, (int index) {
              setState(
                () {
                  selected = index;
                },
              );
            }, restaurant),
            Expanded(
              child: FoodListView(selected, (int index) {
                setState(() {
                  selected = index;
                  pageController.jumpToPage(index);
                });
              }, pageController, restaurant),
            ),

            Container(
              padding: EdgeInsets.all(30),
              child: SmoothPageIndicator(controller: pageController, count: restaurant.menu.length,
                effect: CustomizableEffect(dotDecoration: DotDecoration(
                  width: 8,
                  height: 8,
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(8)
                ), activeDotDecoration: DotDecoration(
                  width: 12,
                  height: 12,
                  borderRadius: BorderRadius.circular(12),
                  color: kPrimaryColor,
                )),
                onDotClicked: (index) => pageController.jumpToPage(index),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){},
        backgroundColor: kPrimaryColor,
          elevation: 2,
        child: Icon(Icons.shopping_bag_outlined),
        ),
    );
  }
}
