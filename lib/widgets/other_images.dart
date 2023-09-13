// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class OtherImages extends StatelessWidget {
  const OtherImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container( 
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                image: DecorationImage(image: AssetImage('images/1.jpg'), fit: BoxFit.cover)
              ),
            ),
          ),Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                image: DecorationImage(image: AssetImage('images/2.jpg'), fit: BoxFit.cover)
              ),
            ),
          ),Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                image: DecorationImage(image: AssetImage('images/3.jpg'), fit: BoxFit.cover)
              ),
            ),
          ),Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                image: DecorationImage(image: AssetImage('images/3.jpg'), fit: BoxFit.cover)
              ),
            ),
          ),Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                image: DecorationImage(image: AssetImage('images/4.jpg'), fit: BoxFit.cover)
              ),
            ),
          ),
        ],
      ),
    );
  }
}