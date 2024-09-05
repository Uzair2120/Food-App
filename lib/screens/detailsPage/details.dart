import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/models/food.dart';
import 'package:food_delivery_app/screens/detailsPage/detailsWidgets/foodDetail.dart';
import 'package:food_delivery_app/widgets/CustomAppbar.dart';
import 'package:google_fonts/google_fonts.dart';

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
              FoodDetails(food),
            ],
          ),
        ),
    floatingActionButton: Container(

      width: 100,
      height: 50,
      child: RawMaterialButton(onPressed: (){},
        fillColor: kPrimaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(55)
        ),
        elevation: 2,
        padding: EdgeInsets.only(
            left: 10,
          right: 10
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.shopping_bag_outlined, color: Colors.black, size: 30,),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle
              ),
              child: Text(food.quantity.toString(), style: GoogleFonts.poppins(
                fontWeight: FontWeight.w700,
                // fontSize: 18
              ),),
            )
          ],
        ),
      ),
    )
    );
  }
}
