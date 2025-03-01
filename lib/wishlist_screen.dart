import 'package:flutter/material.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Houses',
          textAlign: TextAlign.left,
          style: TextStyle(color: Colors.blue, fontSize: 30),
        ),
        Expanded(
          child: ListView.separated(
            padding: const EdgeInsets.all(20),
            itemBuilder: (context, index) => const CustomCard(),
            separatorBuilder: (context, index) => const SizedBox(
              height: 20,
            ),
            itemCount: 5,
          ),
        ),
      ],
    );
  }
}

class CustomCard extends StatefulWidget {
  const CustomCard({
    super.key,
  });

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          child: Image.asset(
            'assets/home1.jpeg',
            width: double.infinity,
            height: 120,
            fit: BoxFit.cover,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Laurels',
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Color.fromARGB(255, 106, 149, 184),
                fontSize: 20,
              ),
            ),
            Row(
              children: [
                const Icon(
                  Icons.location_on,
                  color: Colors.black,
                  size: 20,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text('Taliparamba,Kannur'),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    isActive = !isActive;
                    setState(() {});
                  },
                  icon: Icon(
                    isActive ? Icons.favorite : Icons.favorite_outline,
                    color: Colors.black,
                    size: 20,
                  ),
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
