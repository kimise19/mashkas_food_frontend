import 'package:flutter/material.dart';

import 'package:mashkas_food/src/models/food_model.dart';
import 'package:mashkas_food/src/widget/food_detail_content_widget.dart';

class FoodPage extends StatelessWidget {
  const FoodPage({Key? key, required this.food}) : super(key: key);
  final Food food;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              pinned: true,
              expandedHeight: 300,
              flexibleSpace: FlexibleSpaceBar(
                  title: Text(
                    food.nombre ?? "",
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  background:
                      Image.network(food.imagen ?? "", fit: BoxFit.cover)),
            ),
            SliverFillRemaining(child: FoodDetailsContentWidget(food: food)),
          ],
        ),
      ),
    );
  }
}
