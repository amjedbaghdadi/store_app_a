// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TapBarPage extends StatelessWidget {
  const TapBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container( 
              width: 80,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 224, 204, 175),
                borderRadius: BorderRadius.circular(13),
              ),
              child: Center(child: Text('All', style: TextStyle(fontWeight: FontWeight.bold),)),
            ),
          ),Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: 80,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 226, 151, 39),
                borderRadius: BorderRadius.circular(13),
              ),
              child: Center(child: Text('Lamp', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
            ),
          ),Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: 80,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 224, 204, 175),
                borderRadius: BorderRadius.circular(13),
              ),
              child: Center(child: Text('Table', style: TextStyle(fontWeight: FontWeight.bold),)),
            ),
          ),Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: 80,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 224, 204, 175),
                borderRadius: BorderRadius.circular(13),
              ),
              child: Center(child: Text('Clock', style: TextStyle(fontWeight: FontWeight.bold),)),
            ),
          ),Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: 80,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 224, 204, 175),
                borderRadius: BorderRadius.circular(13),
              ),
              child: Center(child: Text('Clock', style: TextStyle(fontWeight: FontWeight.bold),)),
            ),
          ),
        ],
      ),
    );
  }
}