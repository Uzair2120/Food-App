import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:food_delivery_app/screens/detailsPage/detailsWidgets/foodDetail.dart';
import 'package:food_delivery_app/widgets/CustomAppbar.dart';

import 'detailsWidgets/foodImg.dart';

class DetailsPage extends StatelessWidget {
  final Food food;

  DetailsPage(this.food);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(Icons.favorite_border_outlined,
                  Icons.arrow_back_ios_new_outlined,
                  leftCallback: () => Navigator.of(context).pop()),
              FoodImg(food),
              FoodDetails(food)
            ],
          ),
        ));
  }
}
