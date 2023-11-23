import 'package:flutter/material.dart';
import 'package:restaurantapp/screens/city_selection.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      home: CitySelect()
    );
  }
}