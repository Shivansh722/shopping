import 'package:flutter/material.dart';
import 'package:shopit/components/item_tile.dart';
import 'package:shopit/models/item.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
        ),
        
        // Search Bar
        Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          margin: EdgeInsets.symmetric(horizontal: 25),
          child: Row(
            
            children:const [
              
              Icon(Icons.search),
              SizedBox(width: 10), // Add some spacing between the icon and text
              Text('Search for products, brands and more'),
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children:const  [
              Text(
                'Live Deals',
                style: TextStyle(
                  fontSize: 20,
                  
                ),
              ),

              Text(
                'Hot Deals🔥',
                style: TextStyle(
                  fontSize: 20,
                  
                  color: Color.fromARGB(255, 51, 51, 242),
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: 10),

        Expanded(
          child: ListView.builder(
            itemCount: 3,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              // Create an item tile
              Item item = Item(
                

                imagePath: 'lib/images/wine1.png',
                name: 'Item $index',
                price: 100,
                description: '', // Add a description here
              );

              return ItemTile(
                item: item,
              );
            },
          ),
        ),
      ],
    );
  }
}
