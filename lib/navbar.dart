import 'package:edudrive/complaint_screen.dart';
import 'package:edudrive/home_screen.dart';
import 'package:edudrive/search_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Mybottomnavbar extends StatefulWidget {
  Mybottomnavbar({Key? key, currentIndex}) : super(key: key);

  @override
  State<Mybottomnavbar> createState() => _MybottomnavbarState();
}

class _MybottomnavbarState extends State<Mybottomnavbar> {
  int currentIndex = 0;

  void ontapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  List<Widget> childrens = [
    HomeScreen(),
    SearchScreen(),
    ComplaintScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: childrens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: ontapped,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'complaint'),
          ]),
    );
  }
}
