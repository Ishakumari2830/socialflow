
import 'package:flutter/material.dart';
import 'package:socialflow/views/people.dart';
import 'package:socialflow/views/plans.dart';
import 'package:socialflow/views/profile.dart';

import 'add.dart';
import 'homescreen.dart';





class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    PlanScreen(),
    ChatGPTPage(),
    PeopleScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('FlowSocial',style: TextStyle(
      //     color: Colors.black
      //   ),),
      //   backgroundColor: Colors.purple.shade200,
      //   automaticallyImplyLeading: false,
      // ),
      body: _screens[_selectedIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _selectedIndex = 2; // Navigate to AddScreen
          });
        },
        backgroundColor: Colors.purple,
        child: Icon(Icons.add, color: Colors.white, size: 36),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Stack(
        children: [
          Container(
            height: 70,
            decoration: BoxDecoration(
              color: Colors.transparent, // Transparent background
            ),
          ),
          ClipPath(
            clipper: CustomNavigationBarShape(),
            child: Container(
              height: 70,
              color: Colors.white.withOpacity(0.9), // Semi-transparent background
              child: BottomNavigationBar(
                currentIndex: _selectedIndex,
                onTap: _onItemTapped,
                selectedItemColor: Colors.purple,
                unselectedItemColor: Colors.grey,
                type: BottomNavigationBarType.fixed,
                elevation: 0,
                backgroundColor: Colors.transparent, // Transparent
                items: [
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.event_note),
                    label: 'My Plans',
                  ),
                  BottomNavigationBarItem(
                    icon: SizedBox.shrink(), // Empty space for FAB
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.people),
                    label: 'People',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.account_circle),
                    label: 'Profile',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomNavigationBarShape extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final double cornerRadius = 20.0;

    final path = Path();
    path.moveTo(0, cornerRadius);
    path.quadraticBezierTo(0, 0, cornerRadius, 0); // Top-left curve
    path.lineTo(size.width - cornerRadius, 0);
    path.quadraticBezierTo(size.width, 0, size.width, cornerRadius); // Top-right curve
    path.lineTo(size.width, size.height - cornerRadius);
    path.quadraticBezierTo(size.width, size.height, size.width - cornerRadius, size.height); // Bottom-right curve
    path.lineTo(cornerRadius, size.height);
    path.quadraticBezierTo(0, size.height, 0, size.height - cornerRadius); // Bottom-left curve
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
