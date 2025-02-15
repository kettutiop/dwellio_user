import 'package:flutter/material.dart';

class BuyPage extends StatelessWidget {
  const BuyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: InputDecoration(
            hintText: "Search",
            prefixIcon: Icon(
              Icons.search,
              color: Colors.black,
              size: 30,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40.0),
            ),
          ),
        ),
      ],
    );
  }
}
