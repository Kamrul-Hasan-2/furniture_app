import 'package:flutter/material.dart';

import '../HomePage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  MySnacbar(msg, context){
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(msg)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
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
            SizedBox(
              height: 250,
              width: 400,
              child: Image.asset('image/login.png'),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Text('UserName', style:TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "UserName"
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
              child: Text('Password', style:TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),),
            ),
            Container(
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Password"
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(onPressed: (){
                  MySnacbar("Login Successfully", context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage(),));
                }, child: const Text('Login'), style: ButtonStyle(
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
