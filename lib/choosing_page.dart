import 'package:flutter/material.dart';

class ChoosingPage extends StatefulWidget {
  const ChoosingPage({super.key});

  @override
  State<ChoosingPage> createState() => _ChoosingPageState();
}

class _ChoosingPageState extends State<ChoosingPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Expanded(
          child: Center(
            child: SizedBox(
              width: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'dwellio',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 128, 124, 124),
                        fontSize: 30,
                        fontStyle: FontStyle.italic),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  CustomListTile(
                    isChecked: selectedIndex == 0,
                    image: 'assets/home.jpeg',
                    label: 'Buy a house',
                    onTap: (value) {
                      if (value != null && value) {
                        setState(() {
                          selectedIndex = 0;
                        });
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomListTile(
                    isChecked: selectedIndex == 1,
                    image: 'assets/rent.jpeg',
                    label: 'Rent a home',
                    onTap: (value) {
                      if (value != null && value) {
                        setState(() {
                          selectedIndex = 1;
                        });
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomListTile(
                    isChecked: selectedIndex == 2,
                    image: 'assets/key.jpeg',
                    label: 'Sell my house',
                    onTap: (value) {
                      if (value != null && value) {
                        setState(() {
                          selectedIndex = 2;
                        });
                      }
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CustomListTile(
                    isChecked: selectedIndex == 3,
                    image: 'assets/fence.jpeg',
                    label: 'Property related',
                    onTap: (value) {
                      if (value != null && value) {
                        setState(() {
                          selectedIndex = 3;
                        });
                      }
                    },
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  SizedBox(
                    width: 300,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 106, 149, 184),
                          foregroundColor: Colors.white),
                      onPressed: () {},
                      child: const Text(
                        'Continue',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    this.isChecked = false,
    required this.image,
    required this.label,
    required this.onTap,
  });
  final Function(bool?) onTap;
  final bool isChecked;
  final String image, label;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 100,
      decoration: BoxDecoration(border: Border.all(color: Colors.blueAccent)),
      child: Row(
        children: [
          Image.asset(
            image,
            height: 70,
            width: 70,
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Text(
              label,
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 106, 149, 184),
              ),
            ),
          ),
          Checkbox(
            checkColor: Colors.white,
            activeColor: Color.fromARGB(255, 106, 149, 184),
            value: isChecked,
            onChanged: onTap,
          ),
        ],
      ),
    );
  }
}
