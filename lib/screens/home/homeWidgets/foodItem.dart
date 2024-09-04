import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:google_fonts/google_fonts.dart';

class FoodItem extends StatelessWidget{
  final Food food;

  FoodItem(this.food);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      decoration: BoxDecoration(
        color: Colors.white, 
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(5),
            child: Image.asset(food.img),
          ),

          Expanded(
            child: Container(
              padding: EdgeInsets.only(right: 20 , left: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(food.name , style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 15
                      ),),
                      Icon(Icons.arrow_forward_ios_outlined, size: 16,)
                    ],
                  ),
                  Text(food.desc, style: GoogleFonts.poppins(fontSize: 12 , fontWeight: FontWeight.w500,color: food.highlight ? kPrimaryColor : Colors.grey),),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text('\$', style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                        fontSize: 11
                      ),),
                      Text('${food.price}', style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                        fontSize: 16
                      ),),
                    ],
                  )
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }

}