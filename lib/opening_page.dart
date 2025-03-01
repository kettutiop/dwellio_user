import 'package:flutter/material.dart';

class OpeningPage extends StatelessWidget {
  const OpeningPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/opening_image.jpeg',
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 80,
          ),
          const Text(
            'Find your dream home!!',
            textAlign: TextAlign.left,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 40,
                fontStyle: FontStyle.italic),
          ),
          const SizedBox(
            height: 20,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black),
                  onPressed: () {},
                  child: const Text(
                    'Lets get started',
                    style: TextStyle(
                        fontSize: 30, color: Color.fromARGB(255, 97, 130, 157)),
                  )),
            ],
          ),
          const SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
