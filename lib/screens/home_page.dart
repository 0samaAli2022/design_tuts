// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';

import '../widgets/bottom_nav_bar.dart';
import '../widgets/promo_card.dart';
import '../widgets/search_bar.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        bottom: SearchBar(),
        title: const Text(
          "Shopping",
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.filter_list),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(Icons.shopping_cart),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 12, 12, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Branded Bucket',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                Text(
                  'See All',
                  style: TextStyle(color: Colors.black38, fontSize: 14),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView(
              children: [
                promoCard('assets/images/one.jpg', 'Best Style'),
                promoCard('assets/images/two.jpg', 'New Fashion'),
                promoCard('assets/images/three.jpg', 'Classic'),
                promoCard('assets/images/four.jpg', 'Stylish'),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
