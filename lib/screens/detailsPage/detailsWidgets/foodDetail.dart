import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:food_delivery_app/screens/detailsPage/detailsWidgets/foodQuantity.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodDetails extends StatelessWidget{
  final Food food;
  FoodDetails(
      this.food
      );
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kbackground,
      padding: EdgeInsets.all(25),
      child: Column(
        children: [
          Text(food.name, style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: 22
          ),),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _IconsButtonText(Icons.watch_later_outlined, Colors.blue, food.waiting),
              _IconsButtonText(Icons.star_border_outlined, Colors.amber, food.score.toString()),
              _IconsButtonText(Icons.local_fire_department_outlined, Colors.red, food.cal),
            ],
          ),

          SizedBox(height: 30,),
          FoodQuantity(food),
        ]
      ),
    );
  }

  Widget _IconsButtonText(IconData icon , Color color , String text){
    return Container(
      child: Row(
        children: [
          Icon(icon,
          size: 20,
          color: color,),
          Text(text, style: GoogleFonts.poppins(
            fontSize: 16
          ),),
        ],
      ),
    );
  }

}