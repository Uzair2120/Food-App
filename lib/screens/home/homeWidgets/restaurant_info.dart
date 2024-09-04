import 'package:flutter/material.dart';
import 'package:food_delivery_app/constants/colors.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:google_fonts/google_fonts.dart';

class RestaurantInfo extends StatelessWidget {
  final restaurant = Restaurant.generateRestaurants();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Restaurant',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          padding: EdgeInsets.all(6),
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(5)),
                          child: Text('${restaurant.waiting}',
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 14))),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '${restaurant.distance}',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '${restaurant.label}',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(200),
                child: Image.asset(
                  restaurant.logoUrl,
                  width: 80,
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '"${restaurant.desc}"',
                  style: TextStyle(fontSize: 14),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star_border_outlined,
                      color: kPrimaryColor,
                    ),
                    Text('${restaurant.score}',
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold, fontSize: 14)),
                    SizedBox(
                      width: 15,
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
