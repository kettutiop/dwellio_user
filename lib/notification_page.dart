import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            SizedBox(
              height: 90,
              width: 20,
            ),
            Text(
              'P Sundareshan has visted your profile',
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              width: 20,
            ),
            Icon(Icons.more_horiz_sharp),
            SizedBox(
              height: 50,
              width: 20,
            ),
          ],
        ),
      ],
    );
  }
}
