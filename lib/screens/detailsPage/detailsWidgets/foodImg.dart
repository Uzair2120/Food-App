import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';

import '../../../models/food.dart';

class FoodImg extends StatelessWidget {
  final Food food;

  FoodImg(this.food);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(flex: 1, child: Container()),
              Expanded(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(

                        color: kbackground,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50))),
                  )
              )
            ],
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    offset: Offset(-1, 10),
                    blurRadius: 10
                  )
                ]
              ),
              height: 250,
              width: 250,
              child: Image.asset(food.img, fit: BoxFit.cover,),
            ),
          )
        ],
      ),
    );
  }
}
