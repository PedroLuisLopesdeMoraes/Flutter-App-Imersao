import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:myapp/model/restaurant.dart';

class RestaurantData {
  Future<List<Restaurant>> getRestaurants() async {
    List<Restaurant> listRestaurant = [];

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
