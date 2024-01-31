import 'package:flutter/material.dart';

class Assignment6 extends StatefulWidget{
  const Assignment6({super.key});

  @override
  State<Assignment6> createState() => _Assignment6State();
}

class _Assignment6State extends State<Assignment6> {
  int? selectedIndex = 0;

  final List<String> imageList = [

    'https://pics.craiyon.com/2023-06-09/45d985994b52426a9e56a258a8a42e55.webp',
    'https://pyxis.nymag.com/v1/imgs/4f0/715/3a408c4b9fd021860939b94c47251a521d-wandavision.rsquare.w400.jpg',
    'https://suddhnews.in/content/images/2022/07/Shraddha-Kapoor.jpg',
    'https://www.arabiaweddings.com/sites/default/files/styles/max980/public/tips/2016/05/bollywood_beauty.jpg?itok=GyypDgAm'
  ];

  void showNextImage() {
    setState(() {
      selectedIndex = selectedIndex! + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Display Images",
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              imageList[selectedIndex!],
              width: 300,
              height: 300,
            ),
            
            const SizedBox (
              height: 20,
            ),

            ElevatedButton(
              onPressed: showNextImage, 
              child: const Text(
                "Next",
              ),
            ),

            const SizedBox(
              height: 20,
            ),

            ElevatedButton(
              onPressed: (){
                setState(() {
                  selectedIndex = 0;
                });
              }, 
              child: const Text(
                "Reset",
              ),
            ),
          ],
        ),
      ),
    );
  }
}