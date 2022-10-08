import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:you/web_View.dart';

import 'Animations/FadeAnimation.dart';

class cardview extends StatefulWidget {
  const cardview({super.key});

  @override
  State<cardview> createState() => _cardviewState();
}

class _cardviewState extends State<cardview> {
  Card makeDashboardItem(String title, String img, int index) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(8),
      child: Container(
        decoration: index == 0 || index == 3 || index == 4
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(0),
                gradient: const LinearGradient(
                  begin: FractionalOffset(0.0, 0.0),
                  end: FractionalOffset(3.0, -1.0),
                  colors: [
                    Color.fromARGB(255, 9, 21, 49),
                    Color(0xFF313f64),
                  ],
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.white10,
                    blurRadius: 10,
                    offset: Offset(2, 2),
                  )
                ],
              )
            : BoxDecoration(
                borderRadius: BorderRadius.circular(0),
                gradient: const LinearGradient(
                  begin: FractionalOffset(0.0, 0.0),
                  end: FractionalOffset(3.0, -1.0),
                  colors: [
                    Color.fromARGB(255, 9, 21, 49),
                    Color(0xFF313f64),
                  ],
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.white10,
                    blurRadius: 10,
                    offset: Offset(2, 2),
                  )
                ],
              ),
        child: InkWell(
          onTap: () {
            if (index == 0) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const WebViewApp()),
              );
            }
            if (index == 1) {
              print("excel");
            }
            if (index == 2) {
              print("pickle");
            }
            if (index == 3) {
              print("others");
            }
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            verticalDirection: VerticalDirection.down,
            children: [
              const SizedBox(height: 50),
              Center(
                child: Image.asset(
                  img,
                  height: 50,
                  width: 50,
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Text(
                  title,
                  style: const TextStyle(
                      fontSize: 19,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 3, 14, 42),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: null,
        title: Text(
          "HOME",
          style: TextStyle(
              color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),
        ),
        brightness: Brightness.light,
        actions: <Widget>[
          IconButton(
            onPressed: () {
              print("hi");
            },
            icon: Icon(
              Icons.notifications_none,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {
              print("hi");
            },
            icon: Icon(
              Icons.web,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          FadeAnimation(
              1.0,
              Text(
                "DATA TYPES",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              )),
          // FadeAnimation(
          //     1.0,
          //     Text(
          //       "Select the preffered data type.",
          //       style: TextStyle(color: Colors.white, fontSize: 18),
          //     )),
          const SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(2),
              children: [
                makeDashboardItem("CSV", "assets/images/csv.jpeg", 0),
                makeDashboardItem("EXCEL", "assets/images/excel.jpeg", 1),
                makeDashboardItem("PICKLE", "assets/images/file.jpeg", 2),
                makeDashboardItem("OTHERS..", "assets/images/file.jpeg", 3),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color.fromARGB(255, 3, 14, 42),
        animationDuration: Duration(milliseconds: 0),
        color: Color.fromARGB(255, 3, 14, 42),
        buttonBackgroundColor: Colors.blue[800],
        items: <Widget>[
          Icon(
            Icons.roofing,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.add,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.history,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.people,
            size: 30,
            color: Colors.white,
          ),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
    );
  }
}
