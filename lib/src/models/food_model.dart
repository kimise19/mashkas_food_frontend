// To parse this JSON data, do
//
//     final food = foodFromJson(jsonString);

import 'dart:convert';

Food foodFromJson(String str) => Food.fromJson(json.decode(str));

String foodToJson(Food data) => json.encode(data.toJson());

class Food {
  Food({
    this.nombre,
    this.precio,
    this.imagen,
    this.descripcion,
  });

  String? nombre;
  String? precio;
  String? imagen;
  String? descripcion;

  factory Food.fromJson(Map<String, dynamic> json) => Food(
        nombre: json["nombre"],
        precio: json["precio"],
        imagen: json["imagen"],
        descripcion: json["descripcion"],
      );

  Map<String, dynamic> toJson() => {
        "nombre": nombre,
        "precio": precio,
        "imagen": imagen,
        "descripcion": descripcion,
      };
}
