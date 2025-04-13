import 'package:flutter/material.dart';

class AppTile extends StatelessWidget {
  final int sno;
  final String appName;
  final List<String> categories;
  final double rating;
  final String sizeMB;

  const AppTile({
    Key? key,
    required this.sno,
    required this.appName,
    required this.categories,
    required this.rating,
    required this.sizeMB,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18, left: 35, right: 35, bottom: 10),
      child: Container(
        
        child: Row(
          
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(sno.toString(), style: TextStyle(fontSize: 18),),
            SizedBox(width: 20,),
            // App icon
            // ClipRRect(
            //   borderRadius: BorderRadius.circular(12),
            //   child: Image.asset(
            //     'assets/join_clash_icon.png', // replace with your icon path or pass dynamically
            //     width: 50,
            //     height: 50,
            //     fit: BoxFit.cover,
            //   ),
            // ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(10)
      
              )
            ),
            const SizedBox(width: 20),
        
            // App details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    appName,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 1),
                  Wrap(
                    spacing: 6,
                    runSpacing: 4,
                    children: categories
                        .map((category) => Text(
                              category,
                              style: const TextStyle(fontSize: 14, color: Color.fromARGB(255, 145, 145, 145)),
                            ))
                        .toList(),
                  ),
                  const SizedBox(height: 1),
                  Row(
                    children: [
                      Text(
                        '$rating',
                        style: const TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                      const SizedBox(width: 4),
                      const Icon(Icons.star, size: 14, color: Colors.grey),
                      const SizedBox(width: 10),
                      Text(
                        sizeMB,
                        style: const TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
