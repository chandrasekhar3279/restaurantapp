import 'package:flutter/material.dart';
import 'package:restaurantapp/model/restaurant_model.dart';
class DetailedPage extends StatefulWidget {
  final RestaurantModel restaurant;
  const  DetailedPage({super.key,required this.restaurant});

  @override
  State<DetailedPage> createState() => _DetailedPageState();
}

class _DetailedPageState extends State<DetailedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("${widget.restaurant.RestaurantName}"),
      ),
      body: Container(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  child:Image.asset("assets/restaurant.jpeg"),
                ),
              
                const SizedBox(height: 12,),
               const Row(
                children: [
                  InkWell(
                    child: Text("Phone Number : 9000680012")),
                ],
              ),
              const SizedBox(height: 12,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(widget.restaurant.RestaurantName!,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    Row(
                      children: [
                        Text(widget.restaurant.rating!.toString(),style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        Icon(Icons.star_border_outlined,color: Colors.green,)
                      ],
                    ),
                  ],
                ),
                  const SizedBox(height: 10,),
                
                Text("${widget.restaurant.description ?? 'N/A'}..."),

                const SizedBox(height: 12,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                    Text("Opening: "),
                    Text("${widget.restaurant.timings!}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)
                      ],
                    ),
                    Column(
                      children: [
                        Text("Location :"),
                    Text(widget.restaurant.city!,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),

                      ],
                    )
                    
                    
                  ],
                ),
              const SizedBox(height: 12,),
              

            
              ],
            ),
          ),
        ),
      ),
    );
  }
}