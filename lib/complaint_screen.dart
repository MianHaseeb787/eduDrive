import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ComplaintScreen extends StatefulWidget {
  const ComplaintScreen({Key? key}) : super(key: key);

  @override
  State<ComplaintScreen> createState() => _ComplaintScreenState();
}

class _ComplaintScreenState extends State<ComplaintScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 40,
            ),
            Text('Launch a Complaint',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 80,
            ),
            Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text('Pickup point'),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Name',
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                // Text('Drop off point'),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'emial/phone number',
                  ),
                ),

                SizedBox(
                  height: 50,
                ),
                // Text('Drop off point'),
                TextFormField(
                    cursorColor: Colors.red,
                    maxLines: 10, // <--- maxLines
                    decoration: InputDecoration(
                      filled: true,
                      hintText: 'Hint text',
                      // fillColor: Colors.indigo,
                    )),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            TextButton(
                style: TextButton.styleFrom(
                    fixedSize: Size(100, 50), backgroundColor: Colors.black),
                onPressed: () {},
                child: Text('Submit'))
          ],
        ),
      ),
    );
  }
}
