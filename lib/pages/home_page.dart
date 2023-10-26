import 'package:flutter/material.dart';
import 'package:shopit/components/bottom_nav_bar.dart';
import 'package:shopit/pages/profile_page.dart';
import 'package:shopit/pages/shop_page.dart';

import 'cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

//this selected index is to control the bottom navigation bar

int _selectedIndex = 0;

//this function is to navigate between the pages when user taps 
//on the bottom navigation bar
void navigateBottomNavBar(int index)
{
  setState((){
    _selectedIndex = index;
  });
}

//pages to be displayed when user taps on the bottom navigation bar
final List<Widget> _pages = [
  const ShopPage(),

  const CartPage(),

   ProfilePage(),
];


  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Color.fromARGB(206, 235, 234, 234),
      bottomNavigationBar: BottomNavBar(
        onTabChange: (index) => navigateBottomNavBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }

}
