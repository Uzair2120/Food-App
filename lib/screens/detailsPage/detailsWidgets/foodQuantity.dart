import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodQuantity extends StatelessWidget{
  final Food food;
  FoodQuantity(
      this.food
      );


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.maxFinite,
      child: Stack(
        children: [
          Align(
          alignment: Alignment(-0.3, 0),
          child: Container(
            height: double.maxFinite,
            width: 120,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.1),
              borderRadius: BorderRadius.circular(30)
            ),
            child: Row(
              children: [
                SizedBox(width: 15,),
                Text('\$' , style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w600,
                  fontSize: 12
                ),),
                Text(food.price.toString() , style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontWeight: FontWeight.w600
                ),)
              ],
            ),
          ),
        ),
          Align(
            alignment: Alignment(0.3, 0),
            child: Container(
              height: double.maxFinite,
              width: 120,
              decoration: BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.circular(30)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('-' , style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 18),),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(40),
                      shape: BoxShape.circle,
                      color: Colors.white
                    ),
                    child: Text(food.quantity.toString(), style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w700,
                    ),),
                  ),
                  Text('+' , style: GoogleFonts.poppins(fontWeight: FontWeight.w500, fontSize: 18),),
                ],
              ),
            ),
          )
      ]
      ),
    );
  }

}