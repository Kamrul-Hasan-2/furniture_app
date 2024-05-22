import 'package:flutter/material.dart';
import 'package:furniture_app/page_view/page_view1.dart';
import 'package:furniture_app/page_view/page_view2.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'RegOrLog/reg_log_home.dart';

class MainDisplay extends StatelessWidget {
 MainDisplay({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          PageView(
            children: [
              PageView1(),
              PageView2(),
            ],
          ),
          Container(
            alignment: Alignment(0, 0.80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 40,
                  width: 100,
                  child: SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => RegOrLogPage(),));
                      },
                      child: Text('Next'),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.teal),
                      ),
                    ),
                  ),
                ),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RegOrLogPage(),));
                }, child: Text('Skip'), style: ButtonStyle(
                 foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                ),)
              ],
            ),
          )
        ],
      )
    );
  }
}

