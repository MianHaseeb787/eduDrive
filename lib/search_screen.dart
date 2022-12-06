import 'package:edudrive/search_screenlist.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Search for Vans',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 80,
            ),
            Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Pickup point'),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Choose pickup point',
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text('Drop off point'),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Choose drop off point',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            TextButton(
                style: TextButton.styleFrom(
                    fixedSize: Size(100, 50), backgroundColor: Colors.black),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const searchlist()),
                  );
                },
                child: Text('Search'))
          ],
        ),
      ),
    );
  }
}
