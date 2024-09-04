import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:food_delivery_app/screens/home/homeWidgets/foodItem.dart';

class FoodListView extends StatelessWidget {
  final int selected;
  final Function callback;
  final PageController pageController;
  final Restaurant restaurant;

  FoodListView(
      this.selected, this.callback, this.pageController, this.restaurant);

  @override
  Widget build(BuildContext context) {
    final categories = restaurant.menu.keys.toList();

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: PageView(
        controller: pageController,
        onPageChanged: (index) => callback(index),
        children: categories
            .map((e) => ListView.separated(
          padding: EdgeInsets.zero,
                  itemBuilder: (context, index) =>
                      FoodItem(restaurant.menu[categories[selected]]![index]),
                  separatorBuilder: (context, index) => SizedBox(
                    height: 15,
                  ),
                  itemCount: restaurant.menu[categories[selected]]!.length,
                ))
            .toList(),
      ),
    );
  }
}
