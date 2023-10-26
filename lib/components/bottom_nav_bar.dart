import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class BottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
   BottomNavBar({super.key, required this.onTabChange});
   
     

  @override
  Widget build(BuildContext context) {
    return   Container(
      child: GNav(
        rippleColor: Colors.grey[300]!,
        activeColor: Color.fromARGB(255, 108, 100, 100),
       tabActiveBorder: Border.all(color: Color.fromARGB(255, 202, 201, 201), width: 0.5),
       mainAxisAlignment: MainAxisAlignment.center,
       tabBorderRadius: 15,
       onTabChange: (value) => onTabChange!(value),
        tabs: [
          
          GButton(
            icon: Icons.shopping_cart,
            text: 'Cart',
          ),
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.person,
            text: 'Profile',
          ),
        ],
      ),
    );
  }
}
