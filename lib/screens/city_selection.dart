import 'package:flutter/material.dart';
import 'package:restaurantapp/component_widgets/custome_input.dart';
import 'package:restaurantapp/model/city_model.dart';
import 'package:restaurantapp/screens/restaurant_list.dart';

class CitySelect extends StatefulWidget {
  const CitySelect({super.key});

  @override
  State<CitySelect> createState() => _CitySelectState();
}

class _CitySelectState extends State<CitySelect> {
  //i am creating dummy cities list.
  static List<CityModel> cities_List = [
    CityModel("Kakinada"),
    CityModel("Kerala"),
    CityModel("Hyderabad"),
    CityModel("Delhi"),
    CityModel("Bangolor"),
    CityModel("Pune"),
    CityModel("Mumbai"),
  ];

  List<CityModel> display_list = List.from(cities_List);

  void updateList(String value){
  setState(() {
    display_list = cities_List.where((element) => element.CityName!.toLowerCase().contains(value.toLowerCase())).toList();
  });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hunger"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            CustomInput(
              onChanged: (value)=>updateList(value),
              hintText: "Enter your city"),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
              shrinkWrap: true,
              itemCount: display_list.length,
              itemBuilder: (context, index) => ListTile(
                onTap: () { Navigator.push(context, MaterialPageRoute(builder: (context)=>RestaurantList(cityName: display_list[index].CityName!)));},
              title: Text(display_list[index].CityName!),
              ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
