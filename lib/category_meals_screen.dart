import 'package:flutter/material.dart';
import 'package:meal_app/dummy_data.dart';

class CategoryMealsScreenInputs {
  final String title;
  final String id;
  late Color color;

  CategoryMealsScreenInputs(this.id, this.title, this.color);
  CategoryMealsScreenInputs.colorString(this.id, this.title, String colorInt) {
    color = Color(int.parse(colorInt));
  }
}

class CategoryMealsScreen extends StatelessWidget {
  static const routeName = '/category-meals';

  const CategoryMealsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'] as String;
    final categoryId = routeArgs['id']!;
    final categoryColor = Color(int.parse(routeArgs['color'] as String));

    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle),
          backgroundColor: categoryColor,
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return Container();
          },
          itemCount: DUMMY_MEALS.length,
        ));
  }
}
