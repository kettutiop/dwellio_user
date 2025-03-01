import 'package:dwellio_user/notification_page.dart';
import 'package:dwellio_user/search_page.dart';
import 'package:dwellio_user/wishlist_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this, initialIndex: 0);
    _tabController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'dwellio',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 128, 124, 124),
              fontSize: 20,
              fontStyle: FontStyle.italic),
        ),
      ),
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: [
          // const BuySection(),
          const SearchPage(),
          const WishlistScreen(),
          const NotificationPage(),
          Container(
            color: Colors.green,
          ),
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NavBarItem(
                isActive: _tabController.index == 0,
                icon: Icons.home,
                onTap: () {
                  _tabController.animateTo(0);
                },
              ),
              NavBarItem(
                isActive: _tabController.index == 1,
                icon: Icons.search,
                onTap: () {
                  _tabController.animateTo(1);
                },
              ),
              NavBarItem(
                isActive: _tabController.index == 2,
                icon: Icons.favorite,
                onTap: () {
                  _tabController.animateTo(2);
                },
              ),
              NavBarItem(
                isActive: _tabController.index == 3,
                icon: Icons.notifications,
                onTap: () {
                  _tabController.animateTo(3);
                },
              ),
              NavBarItem(
                isActive: _tabController.index == 4,
                icon: Icons.person,
                onTap: () {
                  _tabController.animateTo(4);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavBarItem extends StatelessWidget {
  const NavBarItem({
    super.key,
    required this.icon,
    this.isActive = false,
    required this.onTap,
  });
  final IconData icon;
  final bool isActive;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: isActive ? Colors.blue : Colors.white,
            size: 35,
          ),
        ],
      ),
    );
  }
}
