import 'package:flutter/material.dart';
import 'package:mashkas_food/src/models/food_model.dart';
import 'package:mashkas_food/src/pages/food_page.dart';

class ApiWidget extends StatelessWidget {
  const ApiWidget({Key? key, required this.model}) : super(key: key);
  final Food model;
  @override
  Widget build(BuildContext context) {
    return Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        margin: const EdgeInsets.all(8.0),
        child: InkWell(
            onTap: () {
              Navigator.push<void>(
                context,
                MaterialPageRoute<void>(
                    builder: (BuildContext context) => FoodPage(food: model)),
              );
            },
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Column(
                  children: <Widget>[
                    Expanded(
                        child: Image.network(model.imagen ?? "",
                            fit: BoxFit.cover)),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        model.nombre.toString(),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style:
                            const TextStyle(color: Colors.black, fontSize: 15),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Text(
                        model.precio.toString(),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style:
                            const TextStyle(color: Colors.black, fontSize: 15),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ))));
  }
}
