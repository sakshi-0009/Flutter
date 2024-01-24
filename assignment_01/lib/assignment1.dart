import 'package:flutter/material.dart';

class Assignment1 extends StatelessWidget{
  const Assignment1({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Assignment-01"),
      ),
      body: SizedBox(
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 100,
              width: 100,
              color: Color.fromARGB(255, 205, 235, 57),
            ),
            Container(
              height: 100,
              width: 100,
              color: Color.fromARGB(255, 185, 50, 212),
            ),
            Container(
              height: 100,
              width: 100,
              color: Color.fromARGB(255, 151, 7, 46),
            ),
          ],
        ),
      ),
    );
  }
}