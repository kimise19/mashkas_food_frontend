import 'package:expand_widget/expand_widget.dart';
import 'package:flutter/material.dart';
import 'package:mashkas_food/src/models/food_model.dart';

class FoodDetailsContentWidget extends StatelessWidget {
  const FoodDetailsContentWidget({Key? key, required this.food})
      : super(key: key);
  final Food food;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: <Widget>[
              const SizedBox(height: 8),
              ExpandText(
                food.descripcion.toString(),
                arrowSize: 100,
                maxLines: 10,
                arrowPadding: const EdgeInsets.all(0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
