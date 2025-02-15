import 'package:flutter/material.dart';

import 'wishlist_screen.dart';

class BuySection extends StatelessWidget {
  const BuySection({super.key});

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
        Expanded(
          child: ListView.separated(
            shrinkWrap: true,
            padding: EdgeInsets.all(20),
            itemBuilder: (context, index) => CustomCard(),
            separatorBuilder: (context, index) => SizedBox(
              height: 20,
            ),
            itemCount: 5,
          ),
        ),
      ],
    );
  }
}
