// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:store_app_a/widgets/tap_bar.dart';

import '../widgets/scroll_widgets.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.amber,
              image: DecorationImage(image: AssetImage('images/2.jpg'), fit: BoxFit.fill)
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              child: Center(child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.search, color: Colors.black87,),
                  hintText: 'Tap to search in ouedkniss...',
                  hintStyle: TextStyle(color: Colors.black87),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(20)),
                  ),
                  // focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.white))
                ),
              ),
            ),
          ),
          TapBarPage(),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Products for you', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black),),
                Text('See all', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Expanded(child: CardWidget()),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Cards',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.amber[800],
      ),
    );
  } 
}