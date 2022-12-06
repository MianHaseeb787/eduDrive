import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class searchlist extends StatefulWidget {
  const searchlist({Key? key}) : super(key: key);

  @override
  State<searchlist> createState() => _searchlistState();
}

class _searchlistState extends State<searchlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          ListTile(
              title: Text('Majid'),
              subtitle: Text('9 Seats Available'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.star),
                  Icon(Icons.star),
                ],
              )),
          SizedBox(
            height: 10,
          ),
          ListTile(
              title: Text('Zain'),
              subtitle: Text('9 Seats Available'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.star),
                  Icon(Icons.star),
                ],
              )),
        ],
      ),
    ));
  }
}
