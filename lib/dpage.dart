import 'package:flutter/material.dart';

class OpenPage extends StatelessWidget {
  const OpenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: [
        Image.network(
          'https://media.istockphoto.com/id/1420565849/vector/initial-letter-d-real-estate-logo-with-building-roof-for-investment-and-corporate-business.jpg?s=612x612&w=0&k=20&c=AeUTebQGSjt8XbdUrsYNIfja-1fjjS_EteU_glaSJrk=',
          fit: BoxFit.contain,
        ),
        SizedBox(
          height: 50,
        ),
        Text(
          'dwellio',
          textAlign: TextAlign.end,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 128, 124, 124),
              fontSize: 20,
              fontStyle: FontStyle.italic),
        ),
      ],
    ));
  }
}
