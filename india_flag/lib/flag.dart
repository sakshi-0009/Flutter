import 'package:flutter/material.dart';

class IndiaFlag extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            height: 230,
            color: Colors.orange,
          ),
          Container(
            height: 230,
            color: Colors.white,
            child: Center(
              child: Image.asset(
                'lib/assets/chakra.png',
                width: 200,
                height: 200,
              ),
            ),
          ),
          Container(
            height: 234,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}
