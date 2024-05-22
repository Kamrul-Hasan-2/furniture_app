import 'package:flutter/material.dart';

import '../HomePage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "LogIn",
              style: TextStyle(
                color: Colors.black,
              ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 250,
              width: 400,
              child: Image.asset('image/login.png'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Text('UserName', style:TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "UserName"
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Text('Password', style:TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Password"
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 50,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(),));
                }, child: Text('Login'), style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.teal)
                ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
