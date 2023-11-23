import 'package:flutter/material.dart';
import 'package:restaurantapp/model/city_model.dart';
import 'package:restaurantapp/model/restaurant_model.dart';
import 'package:restaurantapp/screens/restaurent_details.dart';

class RestaurantList extends StatefulWidget {
  final String cityName;
  RestaurantList({super.key, required this.cityName});

  

  @override
  State<RestaurantList> createState() => _RestaurantListState();
}

class _RestaurantListState extends State<RestaurantList> {

static List<RestaurantModel> restaurantsList = [
    RestaurantModel("Kakinada", "Subbayya Hotel", 180, 4,"Quaint and inviting, our restaurant offers a diverse menu of fresh, locally sourced dishes. Experience a blend of modern sophistication and rustic charm in a cozy setting. Perfect for any occasion, savor unforgettable flavors crafted by passionate chefs.","9am-11p.m"),
    RestaurantModel("Kakinada", "Yati foods", 250, 3.8,"Quaint and inviting, our restaurant offers a diverse menu of fresh, locally sourced dishes. Experience a blend of modern sophistication and rustic charm in a cozy setting. Perfect for any occasion, savor unforgettable flavors crafted by passionate chefs.","9am-11p.m"),
    RestaurantModel("Kakinada", "ReevesRestaurant", 240, 3.5,"Quaint and inviting, our restaurant offers a diverse menu of fresh, locally sourced dishes. Experience a blend of modern sophistication and rustic charm in a cozy setting. Perfect for any occasion, savor unforgettable flavors crafted by passionate chefs.","9am-11p.m"),
    RestaurantModel("Kerala", "Restaurant 1", 250, 4.1,"Quaint and inviting, our restaurant offers a diverse menu of fresh, locally sourced dishes. Experience a blend of modern sophistication and rustic charm in a cozy setting. Perfect for any occasion, savor unforgettable flavors crafted by passionate chefs.","9am-11p.m"),
    RestaurantModel("Kerala", "Restaurant 2", 240, 3.8,"Quaint and inviting, our restaurant offers a diverse menu of fresh, locally sourced dishes. Experience a blend of modern sophistication and rustic charm in a cozy setting. Perfect for any occasion, savor unforgettable flavors crafted by passionate chefs.","9am-11p.m"),
    RestaurantModel("Kerala", "Restaurant 3", 260, 3.5,"Quaint and inviting, our restaurant offers a diverse menu of fresh, locally sourced dishes. Experience a blend of modern sophistication and rustic charm in a cozy setting. Perfect for any occasion, savor unforgettable flavors crafted by passionate chefs.","9am-11p.m"),
    RestaurantModel("Hyderabad", "Restaurant 1", 230, 3.8,"Quaint and inviting, our restaurant offers a diverse menu of fresh, locally sourced dishes. Experience a blend of modern sophistication and rustic charm in a cozy setting. Perfect for any occasion, savor unforgettable flavors crafted by passionate chefs.","9am-11p.m"),    
    RestaurantModel("Hyderabad", "Restaurant 2", 270, 3.5,"Quaint and inviting, our restaurant offers a diverse menu of fresh, locally sourced dishes. Experience a blend of modern sophistication and rustic charm in a cozy setting. Perfect for any occasion, savor unforgettable flavors crafted by passionate chefs.","9am-11p.m"),
    RestaurantModel("Hyderabad", "Restaurant 3", 280, 4.2,"Quaint and inviting, our restaurant offers a diverse menu of fresh, locally sourced dishes. Experience a blend of modern sophistication and rustic charm in a cozy setting. Perfect for any occasion, savor unforgettable flavors crafted by passionate chefs.","9am-11p.m"),
    RestaurantModel("Delhi", "Restaurant 1", 250, 3.8,"Quaint and inviting, our restaurant offers a diverse menu of fresh, locally sourced dishes. Experience a blend of modern sophistication and rustic charm in a cozy setting. Perfect for any occasion, savor unforgettable flavors crafted by passionate chefs.","9am-11p.m"),
    RestaurantModel("Delhi", "Restaurant 2", 300, 4.0,"Quaint and inviting, our restaurant offers a diverse menu of fresh, locally sourced dishes. Experience a blend of modern sophistication and rustic charm in a cozy setting. Perfect for any occasion, savor unforgettable flavors crafted by passionate chefs.","9am-11p.m"),
    RestaurantModel("Delhi", "Restaurant 3", 270, 3.9,"Quaint and inviting, our restaurant offers a diverse menu of fresh, locally sourced dishes. Experience a blend of modern sophistication and rustic charm in a cozy setting. Perfect for any occasion, savor unforgettable flavors crafted by passionate chefs.","9am-11p.m"),
    RestaurantModel("Pune", "Restaurant 1", 250, 3.6,"Quaint and inviting, our restaurant offers a diverse menu of fresh, locally sourced dishes. Experience a blend of modern sophistication and rustic charm in a cozy setting. Perfect for any occasion, savor unforgettable flavors crafted by passionate chefs.","9am-11p.m"),
    RestaurantModel("Pune", "Restaurant 2", 240, 3.7,"Quaint and inviting, our restaurant offers a diverse menu of fresh, locally sourced dishes. Experience a blend of modern sophistication and rustic charm in a cozy setting. Perfect for any occasion, savor unforgettable flavors crafted by passionate chefs.","9am-11p.m"),
    RestaurantModel("Pune", "Restaurant 3", 340, 3.4,"Quaint and inviting, our restaurant offers a diverse menu of fresh, locally sourced dishes. Experience a blend of modern sophistication and rustic charm in a cozy setting. Perfect for any occasion, savor unforgettable flavors crafted by passionate chefs.","9am-11p.m"),
    RestaurantModel("Mumbai", "Restaurant 1", 400, 4.8,"Quaint and inviting, our restaurant offers a diverse menu of fresh, locally sourced dishes. Experience a blend of modern sophistication and rustic charm in a cozy setting. Perfect for any occasion, savor unforgettable flavors crafted by passionate chefs.","9am-11p.m"),
    RestaurantModel("Mumbai", "Restaurant 2", 290, 3.8,"Quaint and inviting, our restaurant offers a diverse menu of fresh, locally sourced dishes. Experience a blend of modern sophistication and rustic charm in a cozy setting. Perfect for any occasion, savor unforgettable flavors crafted by passionate chefs.","9am-11p.m"),
    // Add more restaurants as needed
  ];

  List<RestaurantModel> displayRestaurantList = List.from(restaurantsList);

  @override
  Widget build(BuildContext context) {
    // Filter the restaurants based on cityName
    List<RestaurantModel> filteredRestaurants = displayRestaurantList
        .where((restaurant) => restaurant.city == widget.cityName)
        .toList();


    return Scaffold(
      appBar: AppBar(
        title: Text("Hungers, ${widget.cityName}"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: filteredRestaurants.length ,
              itemBuilder: (context,index)=>Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>DetailedPage(restaurant:filteredRestaurants[index],),),);},
                  child: Container(
                    decoration: BoxDecoration(
                       color: Color.fromARGB(255, 220, 206, 100),
                       borderRadius: BorderRadius.circular(12.0)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                             mainAxisAlignment: MainAxisAlignment.start,
                             crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(filteredRestaurants[index].RestaurantName!,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                    
                                    
                                  ],
                                ),
                                const SizedBox(height: 10,),
                                Row(children: [
                                  Text("Avg cost for two people : ${filteredRestaurants[index].foodPricefortwoPeople}"),
                          
                                ],)
                              ],
                            ),
                          ),
                          const SizedBox(width: 10,),
                          Column(
                            children: [
                              Text("${filteredRestaurants[index].city!}",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),),
                              const SizedBox(height: 10,),
                              Container(
                                    color: Colors.green,
                                    child: Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Text(filteredRestaurants[index].rating!.toString()),
                                    )),
                            ],
                          )
                        ],
                      ),
                    )
                  ),
                ),
              ),),
          ),
        ],
      ),
    );
  }
}
