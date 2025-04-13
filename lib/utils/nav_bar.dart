import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 42, top: 8),
      child: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 6, right: 18),
              child: Text("For you", style: TextStyle(fontSize: 18),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 6, right: 18),
              child: Text("Top charts", style: TextStyle(fontSize: 18, color: const Color.fromARGB(255, 1, 131, 64), fontWeight: FontWeight.w600),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 6, right: 18),
              child: Text("Premiun", style: TextStyle(fontSize: 18),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 6, right: 18),
              child: Text("Category", style: TextStyle(fontSize: 18),),
            ),
            
          ],
        ),)
        
      ),
      
    );
  }
}