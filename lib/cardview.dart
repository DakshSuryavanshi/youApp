import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cardview extends StatefulWidget {
  const cardview({super.key});

  @override
  State<cardview> createState() => _cardviewState();
}

class _cardviewState extends State<cardview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color.fromARGB(15, 21, 46, 1),
        items: <Widget>[
          Icon(Icons.roofing, size: 30),
          Icon(Icons.add, size: 30),
          Icon(Icons.school, size: 30),
          Icon(Icons.history, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
      body: Container(color: Color.fromARGB(15, 21, 46, 1)),
    );
  }
}
