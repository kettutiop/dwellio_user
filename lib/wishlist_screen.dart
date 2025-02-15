import 'package:flutter/material.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Houses',
          textAlign: TextAlign.left,
          style: TextStyle(color: Colors.blue, fontSize: 30),
        ),
        Expanded(
          child: ListView.separated(
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
          borderRadius: BorderRadius.only(
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
            Text(
              'Laurels',
              textAlign: TextAlign.start,
              style: TextStyle(
                color: Color.fromARGB(255, 106, 149, 184),
                fontSize: 20,
              ),
            ),
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.black,
                  size: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Taliparamba,Kannur'),
                Spacer(),
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
