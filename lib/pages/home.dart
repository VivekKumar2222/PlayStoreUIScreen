import 'package:flutter/material.dart';
import 'package:playstore/utils/category_option.dart';
import 'package:playstore/utils/game_tile.dart';
import 'package:playstore/utils/nav_bar.dart';
import 'package:playstore/utils/search_bar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Column(
        children: [
          SizedBox(height: 20,),
          SearchBar2(),
          NavBar(),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 56 ),
                  child: Container(
                    color: const Color.fromARGB(255, 1, 131, 64),
                    width: 80,
                    height: 2,
                  ),
                ),
                Container(
                  color: const Color.fromARGB(255, 222, 222, 222),
                  width: double.infinity,
                  height: 1,
                  
                ),
              ],
            ),
          ),
          CategoryOption(),
          AppTile(sno: 1, appName: "appName", categories: ['Arcade', 'Action', 'Casual', 'Offline'], rating: 4.0, sizeMB: '61 MB'),
          AppTile(sno: 2, appName: "Yalla Ludo - Ludo & Domino", categories: ['Board', 'Casual', 'Multiplayer'], rating: 4.2, sizeMB: '128 MB'),
          AppTile(sno: 3, appName: "PUBG MOBILE", categories: ['Action', 'Shooter', 'Multiplayer'], rating: 3.8, sizeMB: '256 MB'),
          AppTile(sno: 4, appName: "8 Ball Pool", categories: ['Sports', 'Billiards', 'Offline'], rating: 4.6, sizeMB: '102 MB'),
          AppTile(sno: 5, appName: "Subway Surfers", categories: ['Arcade', 'Action', 'Runner', 'Offline'], rating: 4.5, sizeMB: '160 MB'),
          AppTile(sno: 6, appName: "Water Color Sort", categories: ['Puzzle'], rating: 3.6, sizeMB: '40 MB'),
          
          

        ],
      ),

      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.games), label: "Games"),
        BottomNavigationBarItem(icon: Icon(Icons.apps), label: "Apps")
      ],
      currentIndex: 0,
      selectedItemColor: const Color.fromARGB(255, 1, 131, 64),
      backgroundColor: Colors.white,
      ),
    );
  }
}