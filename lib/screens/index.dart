import 'package:final_year_wtld/screens/alert_page.dart';
import 'package:final_year_wtld/screens/home.dart';
import 'package:final_year_wtld/screens/profile.dart';
import 'package:flutter/material.dart';

class Index extends StatefulWidget {
  int currentTabIndex;
  Index({super.key, this.currentTabIndex = 0});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  List<Widget> tabTitles = [
    const Text("Notifications"),
    const Text("Home"),
    const Text("Profile")
  ];
  List<Widget> tabs = [const AlertPage(), const Home(), const Profile()];
  void onItemTapped(int index) {
    setState(() {
      widget.currentTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: tabTitles[widget.currentTabIndex],
      ),
      body: tabs[widget.currentTabIndex],
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: "Notifications",
                backgroundColor: Color.fromARGB(255, 207, 123, 123)),
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
                backgroundColor: Colors.green),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile",
                backgroundColor: Colors.grey),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: widget.currentTabIndex,
          selectedItemColor: Colors.black,
          iconSize: 40,
          onTap: onItemTapped,
          elevation: 5),
    );
  }
}
