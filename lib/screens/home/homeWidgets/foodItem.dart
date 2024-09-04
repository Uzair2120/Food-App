import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/food.dart';

class FoodItem extends StatelessWidget{
  final Food food;

  FoodItem(this.food);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text(food.name),
      Text(food.about)],
    );
  }

}