import 'package:flutter/material.dart';
import 'package:shopit/models/item.dart';

class ItemTile extends StatelessWidget {
  final Item item;

  ItemTile({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 200,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 210, 208, 208),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SizedBox(
                height: 60),
              // Image
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  item.imagePath,
                  width: 200,
                  height: 300,
                ),
              ),

              // Item Name
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  Text(
                    item.description, 
                    style:const TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 127, 127, 129),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('\$'+item.price.toString()),
                ],
              ),

              // Item Price
              

              // Add to Cart Button
              Container(
                padding:  EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 248, 247, 247),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Icon(Icons.add_shopping_cart),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
