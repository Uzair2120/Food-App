import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import '../../widgets/CustomAppbar.dart';
import 'homeWidgets/restaurant_info.dart';


class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kbackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(Icons.search , Icons.arrow_back_ios_outlined),
          SizedBox(height: 30,),
          RestaurantInfo()

        ],
      )
    );
  }
}