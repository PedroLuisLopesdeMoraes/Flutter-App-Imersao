import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:myapp/model/restaurant.dart';

class RestaurantData extends ChangeNotifier{
  List<Restaurant> listRestaurant = [];
  Future<List<Restaurant>> getRestaurants() async {
    String jsonString = await rootBundle.loadString('assets/assets/data.json');
    Map<String, dynamic> data = json.decode(jsonString);
    List<dynamic> restaurants = data['restaurants'];

    for (var restaurant in restaurants) {
      listRestaurant.add(Restaurant.fromMap(restaurant));
      listRestaurant.add(restaurant);
    }

    return listRestaurant;
  }
}
