import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/page_view/page_view1.dart';

import 'MainDisplay.dart';
import 'RegOrLog/login.dart';
import 'RegOrLog/reg_log_home.dart';
import 'RegOrLog/regisratraion.dart';
import 'homeDisplay/Card.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainDisplay(),
    );
  }
}
