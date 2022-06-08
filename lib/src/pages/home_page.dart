import 'package:flutter/material.dart';
import 'package:mashkas_food/src/models/food_model.dart';
import 'package:mashkas_food/src/services/food_service.dart';
import 'package:mashkas_food/src/widget/food_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ignore: prefer_final_fields
  Foodservice _foodService = Foodservice();
  List<Food>? _food;
  @override
  void initState() {
    super.initState();
    _downloadFood();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _food == null
          ? const Center(
              child: SizedBox.square(
                  dimension: 50.0, child: CircularProgressIndicator()))
          : _food!.isEmpty
              ? const Center(child: Text("No hay Lugares"))
              : GridView.count(
                  childAspectRatio: 0.6,
                  crossAxisCount: 2,
                  children: _food!.map((e) => ApiWidget(model: e)).toList(),
                ),
    );
  }

  _downloadFood() async {
    _food = await _foodService.getFood();
    setState(() {});
  }
}
