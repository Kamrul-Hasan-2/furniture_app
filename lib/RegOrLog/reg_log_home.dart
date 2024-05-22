import 'package:flutter/material.dart';
import 'package:furniture_app/RegOrLog/login.dart';
import 'package:furniture_app/RegOrLog/regisratraion.dart';

class RegOrLogPage extends StatelessWidget {
  const RegOrLogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Column(
             // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 500,
                  width: 300,
                  child: Image.asset('image/reg.png'),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                 width: double.infinity,
                  height: 50,
                  child: ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RegistrationPage(),));
                  }, child: Text("Registration"), style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.teal),
                  ),)
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
                    }, child: Text("Login"), style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.teal),
                    ),)
                )
              ],
            )
          ],
        ),
    );
  }
}
