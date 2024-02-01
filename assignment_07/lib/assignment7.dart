import 'package:flutter/material.dart';

class Assignment7 extends StatefulWidget {
  const Assignment7 ({super.key});

  @override
  State<Assignment7> createState() => _Assignment7State();
}

class _Assignment7State extends State<Assignment7> {

  int count = 0;
  void countPalindrome(){
    count = 0;
    List<int> numList = [225, -777, 121, 234, 999];

    for(int i=0; i<numList.length; i++){
      int temp = numList[i].abs();
      int revNum = 0;
      while(temp !=0){
        revNum = revNum * 10 + temp % 10;
        temp = temp ~/ 10;
      }

      if(revNum == numList[i].abs()) {
        count++;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Palindrome Numbers"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
              countPalindrome();
              setState(() {});
              }, 
              child: const Text("Check Palindrome"),
            ),
            const SizedBox(
              height: 20,
            ),
            Text("$count Numbers are palindrome.")
          ],
        ),
      ),
    );
  }

}