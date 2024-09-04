import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../constants/colors.dart';

class FoodList extends StatelessWidget {
  final int selected;
  final Function callback;
  final Restaurant restaurant;

  FoodList(this.selected, this.callback, this.restaurant);

  @override
  Widget build(BuildContext context) {
    final categories = restaurant.menu.keys.toList();

    return Container(
      padding: EdgeInsets.symmetric(vertical: 30),
      height: 100,
      child: ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 25),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => callback(index),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10 ,horizontal: 25),
                decoration: BoxDecoration(
                    color: selected == index ? kPrimaryColor : Colors.white,
                    borderRadius: BorderRadius.circular(30),
                ),
                child: Text('${categories[index]}' , style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500
                ),),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 20,
            );
          },
          itemCount: categories.length),
    );
  }
}
