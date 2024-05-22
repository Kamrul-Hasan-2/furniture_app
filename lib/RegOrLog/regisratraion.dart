import 'package:flutter/material.dart';

import 'login.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

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
        elevation: 0,
       // centerTitle: Text("Registration"),
       title: Text("Registration", style: TextStyle(
         color: Colors.black,
       ),),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Text('User Name',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                  ),
                  labelText: 'User Name'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Text('Full Name',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                    ),
                    labelText: 'Full Name'
                ),
              ),
            ),Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Text('Email',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                    ),
                    labelText: 'Email'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Text('Password',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                    ),
                    labelText: 'Password'
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
              height: 50,
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
                MySnacbar("Registration Successfully", context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
              }, child: Text('Registration'), style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.teal),
              ),),
            )
          ],
        ),
      ),
    );
  }
}
