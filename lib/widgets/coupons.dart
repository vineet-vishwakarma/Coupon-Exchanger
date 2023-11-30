import 'package:flutter/material.dart';

class Coupons extends StatelessWidget {
  const Coupons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Container(
        height: 150,
        width: 290,
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: const Color.fromARGB(255, 235, 235, 235),
        ),
        child: Row(
          children: [
            Image.network(
              'https://www.thesouledstore.com/static/img/300x157-twitter.png',
              width: 120,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                Text(
                  '25% off',
                  style: TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
                Text(
                  'Souled Store',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Text('Expired On 20 Dec 23'),
                SizedBox(height: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
