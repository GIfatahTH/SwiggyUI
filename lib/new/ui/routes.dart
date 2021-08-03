import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'screens/genie_screen/genie_screen.dart';
import 'screens/grocery_screen/grocery_screen.dart';
import 'screens/meat_screen/meat_screen.dart';

import 'screens/all_restaurants_screen/all_restaurants_screen.dart';
import 'screens/offers_screen/offers_screen.dart';

Map<String, Widget Function(RouteData)> routes = {
  OffersScreen.routeName: (_) => OffersScreen(),
  AllRestaurantsScreen.routeName: (_) => OffersScreen(),
  GenieScreen.routeName: (_) => GenieScreen(),
  GroceryScreen.routeName: (_) => GenieScreen(),
  MeatScreen.routeName: (_) => GenieScreen(),
};
