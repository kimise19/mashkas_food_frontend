import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mashkas_food/src/models/food_model.dart';

class Foodservice {
  Foodservice();

  Future<List<Food>?> getFood() async {
    List<Food> result = [];
    try {
      var url = Uri.parse('https://turismmascha-backend.web.app/api/food');
      var response = await http.get(url);
      if (response.body.isEmpty) return result;
      List<dynamic> listBody = json.decode(response.body);
      for (var item in listBody) {
        var food = Food.fromJson(item);
        result.add(food);
      }
      return result;
    } catch (ex) {
      // ignore: avoid_print
      print(ex);
      return null;
    }
  }
}
