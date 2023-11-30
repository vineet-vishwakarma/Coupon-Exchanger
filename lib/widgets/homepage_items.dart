import 'package:flutter/material.dart';

class HomePageItems extends StatelessWidget {
  final IconData icon;
  final String title;
  const HomePageItems({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 170,
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 235, 235, 235),
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 40,
              weight: 50,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
