import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget implements PreferredSizeWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        cursorColor: Colors.black45,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10.0, horizontal: 8.0),
          hintText: 'Search',
          hintStyle: TextStyle(
            color: Colors.grey[500],
          ),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.grey[500],
          ),
          suffixIcon: IconButton(
            icon: Icon(
              Icons.keyboard_voice,
              color: Colors.grey[500],
            ),
            onPressed: () {},
          ),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(77);
}
