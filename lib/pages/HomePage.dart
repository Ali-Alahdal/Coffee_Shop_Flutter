import 'package:coffee_shop_app/component/bottom_nav_bar.dart';
import 'package:coffee_shop_app/pages/CartPage.dart';
import 'package:coffee_shop_app/pages/ShopPage.dart';
import 'package:flutter/material.dart';
import '../const.dart';

class HomePage  extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  int _selectedIndex = 0;
  void navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  final List<Widget> _pages = [
    ShopPage(),
    CartPage()
  ];
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: backgroundColor,
        bottomNavigationBar: MyBottomNavBar(
          onTabChange: (index) => navigateBottomBar(index)
        ),
        body: _pages[_selectedIndex],
    );
  }
}