class Food {
  String name;
  String img;
  String desc;
  String waiting;
  num score;
  num quantity;
  String cal;
  num price;
  String about;
  bool highlight;
  List<Map<String, String>> ingredients;

  Food(this.name, this.img, this.desc, this.waiting, this.score, this.quantity,
      this.cal, this.price, this.about, this.ingredients,
      {this.highlight = false});

  static List<Food> generateRecommendedFoods() {
    return [
      Food(
          'Soba Soup',
          'assets/images/dish1.png',
          'No 1 in Sales',
          '50 mins',
          4.7,
          5,
          '350 kcal',
          15,
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc congue quam et tellus facilisis, ultricies imperdiet dui vestibulum',
          [
            {'Noodle': 'assets/images/ingre1.png'},
            {'Shrimp': 'assets/images/ingre2.png'},
            {'Egg': 'assets/images/ingre3.png'},
            {'Scallion': 'assets/images/ingre4.png'},
          ],
          highlight: true),
      Food(
        'Sai Ua Samun Phrai',
        'assets/images/dish2.png',
        'Low Fat',
        '45 mins',
        4.9,
        7,
        '325 kcal',
        18,
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc congue quam et tellus facilisis, ultricies imperdiet dui vestibulum',
        [
          {'Noodle': 'assets/images/ingre1.png'},
          {'Shrimp': 'assets/images/ingre2.png'},
          {'Egg': 'assets/images/ingre3.png'},
          {'Scallion': 'assets/images/ingre4.png'},
        ],
      ),
      Food(
          'Ratatouille Pasta',
          'assets/images/dish3.png',
          'Highly Recommended',
          '40 mins',
          4.8,
          10,
          '400 kcal',
          20,
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc congue quam et tellus facilisis, ultricies imperdiet dui vestibulum',
          [
            {'Noodle': 'assets/images/ingre1.png'},
            {'Shrimp': 'assets/images/ingre2.png'},
            {'Egg': 'assets/images/ingre3.png'},
            {'Scallion': 'assets/images/ingre4.png'},
          ],
          highlight: true),
    ];
  }

  static List<Food> generatePopularFoods() {
    return [
      Food(
          'Tomato Chicken',
          'assets/images/dish4.png',
          'Most Popular',
          '40 mins',
          4.6,
          11,
          '450 kcal',
          19,
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc congue quam et tellus facilisis, ultricies imperdiet dui vestibulum',
          [
            {'Noodle': 'assets/images/ingre1.png'},
            {'Shrimp': 'assets/images/ingre2.png'},
            {'Egg': 'assets/images/ingre3.png'},
            {'Scallion': 'assets/images/ingre4.png'},
          ],
          highlight: true),
      Food(
        'Sai Ua Samun Phrai',
        'assets/images/dish2.png',
        'Low Fat',
        '45 mins',
        4.9,
        7,
        '325 kcal',
        18,
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc congue quam et tellus facilisis, ultricies imperdiet dui vestibulum',
        [
          {'Noodle': 'assets/images/ingre1.png'},
          {'Shrimp': 'assets/images/ingre2.png'},
          {'Egg': 'assets/images/ingre3.png'},
          {'Scallion': 'assets/images/ingre4.png'},
        ],
      ),
    ];
  }
}
