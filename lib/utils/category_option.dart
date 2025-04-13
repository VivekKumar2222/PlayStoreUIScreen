import 'package:flutter/material.dart';

class CategoryOption extends StatelessWidget {
  const CategoryOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 14, bottom: 12, left: 30),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
        children: [
          // Top Free
          Padding(
            padding: const EdgeInsets.only(right: 10), // spacing between buttons
            child: Container(
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 224, 244, 234),
                borderRadius: BorderRadius.circular(60),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    "Top free",
                    style: TextStyle(
                      color: Color.fromARGB(255, 1, 111, 54),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 4),
                  Icon(Icons.arrow_drop_down, color: Color.fromARGB(255, 1, 111, 54)),
                ],
              ),
            ),
          ),

          // Categories
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                border: Border.all(color: Color.fromARGB(255, 148, 148, 148), width: 1),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text(
                    "Categories",
                    style: TextStyle(
                      color: Color.fromARGB(255, 88, 88, 88),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 4),
                  Icon(Icons.arrow_drop_down, color: Color.fromARGB(255, 88, 88, 88)),
                ],
              ),
            ),
          ),

          // New
          Container(
            height: 40,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              border: Border.all(color: Color.fromARGB(255, 148, 148, 148), width: 1),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  "New",
                  style: TextStyle(
                    color: Color.fromARGB(255, 88, 88, 88),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 4),
                Icon(Icons.arrow_drop_down, color: Color.fromARGB(255, 88, 88, 88)),
              ],
            ),
          ),
        ],
      ),)
      
    );
  }
}
