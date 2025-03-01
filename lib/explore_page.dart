import 'package:flutter/material.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(9.0),
      child: Column(
        children: [
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      'assets/bathroom.jpeg',
                      fit: BoxFit.cover,
                    )),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    'assets/bedroom.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
                ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset('assets/kitchen.jpeg')),
                ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset('assets/living.jpeg')),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Column(
              children: [
                const Text(
                  'Ready to explore?',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 106, 149, 184),
                      fontSize: 30,
                      fontStyle: FontStyle.italic),
                ),
                const SizedBox(
                  height: 100,
                ),
                SizedBox(
                  width: 320,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/google.jpeg',
                          height: 30,
                          width: 30,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text(
                          'Continue with google',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 320,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black),
                    onPressed: () {},
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/facebook.jpeg',
                          height: 33,
                          width: 33,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text(
                          'Continue with facebook',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Dont have an account? Signup',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
