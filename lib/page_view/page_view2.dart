import 'package:flutter/material.dart';

class PageView2 extends StatelessWidget {
  const PageView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
       // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            child: Image.asset("image/buy.png"),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: const Text("Furniture", style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25
            ),),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 5, 10, 0),
            child: const Text(
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
