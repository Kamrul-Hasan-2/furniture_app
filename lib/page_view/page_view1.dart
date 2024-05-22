import 'package:flutter/material.dart';

class PageView1 extends StatelessWidget {
  const PageView1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Image.asset("image/recive.png"),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            padding: EdgeInsets.all(20),
            child: Text("Furniture", style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 25
            ),),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(20, 5, 10, 0),
            child: Text(
              "Available in various colors and finishes, this sectional combines style, flexibility , and comfort for any temporary home.",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20
              ),
            ),
          ),
        ],
      ),
    );
  }
}
