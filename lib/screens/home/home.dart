import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:food_delivery_app/screens/home/homeWidgets/foodList.dart';
import 'package:food_delivery_app/screens/home/homeWidgets/foodListView.dart';
import '../../widgets/CustomAppbar.dart';
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
            CustomAppBar(Icons.search, Icons.arrow_back_ios_outlined),
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
                  print(index);
                  selected = index;
                  pageController.jumpToPage(index);
                });
              }, pageController, restaurant),
            ),
          ],
        ));
  }
}
