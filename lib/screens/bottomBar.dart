import 'package:flutter/material.dart';
import 'package:simply_poem/screens/contactUs.dart';
import 'package:simply_poem/screens/poemsArchieve.dart';
import 'package:simply_poem/screens/profile.dart';
import 'package:simply_poem/screens/subscriptionPlans.dart';
import 'package:sizer/sizer.dart';

class BottomNavigationHolder extends StatefulWidget {
  const BottomNavigationHolder({super.key});

  @override
  State<BottomNavigationHolder> createState() => _BottomNavigationHolderState();
}

class _BottomNavigationHolderState extends State<BottomNavigationHolder> {
  int selectedIndex = 0;
  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    const List<Widget> pages = <Widget>[
      PoemsArchieveScreen(),
      SubscriptionPlanScreen(),
      ContactUsScreen(),
      ProfileScreen(),
    ];

    return Scaffold(
      body: Center(
        child: pages.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.house,
              color: Colors.white70,
              size: 20,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.note_add,
              color: Colors.white70,
              size: 20,
            ),
            label: 'Plans',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.contact_emergency,
              color: Colors.white70,
              size: 20,
            ),
            label: 'Contact',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.white70,
              size: 20,
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: selectedIndex,
        unselectedItemColor: Colors.white70,
        selectedIconTheme: IconThemeData(color: Color(0xffF1BAFF)),
        selectedItemColor: Color(0xffF1BAFF),
        onTap: onItemTapped,
      ),
    );
  }
}
