import 'package:flutter/material.dart';

class SearchBar2 extends StatelessWidget {
  const SearchBar2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Container(
          
          child: Padding(
            
            padding: const EdgeInsets.only(left: 12, right: 12, top: 6, bottom: 6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
                Text("Search for Apps and Games", style: TextStyle(fontSize: 16),),
                IconButton(onPressed: (){}, icon: Icon(Icons.mic)),
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    borderRadius: BorderRadius.circular(60)
                  ),
                ),
                SizedBox(
                  width: 8,
                )
              ],
            ),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color.fromARGB(255, 255, 255, 255),
            boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.4), // shadow color
        spreadRadius: 1, // how wide the shadow spreads
        blurRadius: 5, // how blurry the shadow is
        offset: Offset(0, 0), // changes position of shadow (x, y)
      ),
        ],
          ),
          width: 370,
        
        ),
      ),
    );
  }
}