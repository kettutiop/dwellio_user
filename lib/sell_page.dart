import 'package:flutter/material.dart';

class BuyPage extends StatelessWidget {
  const BuyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'dwellio',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 128, 124, 124),
                fontSize: 20,
                fontStyle: FontStyle.italic),
          ),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 50,
            ),
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
        ),
      ),
    );
  }
}
