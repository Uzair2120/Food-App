import 'package:food_delivery_app/models/food.dart';

class Restaurant {
  String name;
  String distance;
  String waiting;
  String logoUrl;
  String label;
  String desc;
  num score;
  Map<String, List<Food>> menu;

  Restaurant(this.name, this.distance, this.waiting, this.logoUrl, this.label,
      this.desc, this.score, this.menu);

  static Restaurant generateRestaurants() {
    return Restaurant(
        'Restaurant',
        '2.6km',
        '20-30 mins',
        'assets/images/reslogo.png',
        'Restaurant',
        'Our Sandwiches are delicious',
        4.7,
        {
          'Recommended' : Food.generateRecommendedFoods(),
          'Popular' : Food.generatePopularFoods(),
          'Noodles' : [],
          'Pizza' : []
        }
    );
  }
}
