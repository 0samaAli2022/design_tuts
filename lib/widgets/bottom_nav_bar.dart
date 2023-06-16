import 'package:flutter/material.dart';

import '../theme/theme_constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      color: Colors.grey.shade200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: () {},
            tooltip: 'Shop',
            icon: const Icon(
              Icons.shopping_basket,
              color: Colors.red,
            ),
          ),
          IconButton(
            onPressed: () {},
            tooltip: 'Favorites',
            icon: Icon(
              Icons.favorite_border,
              color: kIconColor,
            ),
          ),
          IconButton(
              onPressed: () {},
              tooltip: 'Notifications',
              icon: Icon(
                Icons.notifications,
                color: kIconColor,
              )),
          IconButton(
              onPressed: () {},
              tooltip: 'Near Me',
              icon: Icon(
                Icons.location_on,
                color: kIconColor,
              )),
          IconButton(
              onPressed: () {},
              tooltip: 'Settings',
              icon: Icon(
                Icons.settings,
                color: kIconColor,
              )),
        ],
      ),
    );
  }
}
