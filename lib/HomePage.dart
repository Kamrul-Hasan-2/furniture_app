import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text("All Furniture", style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 05, 0),
                  child: Container(
                    child: const Icon(Icons.location_on,size: 30, color: Colors.black45,),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      child: const Text("Dhaksihin Khan , Dhaka - 1230", style: TextStyle(
                          fontSize: 20
                      ),),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlinedButton(onPressed: (){},style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  backgroundColor: MaterialStateProperty.all(Colors.teal)
                ), child: const Text("All"),),
                OutlinedButton(onPressed: (){}, child: const Text("Chair")),
                OutlinedButton(onPressed: (){}, child: const Text("Table")),
                OutlinedButton(onPressed: (){}, child: const Text("Sofa")),
                OutlinedButton(onPressed: (){}, child: const Text("Door"))
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: Text("Furniture", style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold
                  ),),

                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                  child: Text("See All", style: TextStyle(
                    fontSize: 17
                  ),),
                )
              ],
            )
          ],
        ),
      )
    );
  }
}
