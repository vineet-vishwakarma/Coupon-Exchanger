import 'package:flutter/material.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16.0),
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 235, 235, 235),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: const Center(
          child: ListTile(
            iconColor: Colors.black,
            textColor: Colors.black,
            leading: Icon(Icons.notifications),
            trailing: Icon(Icons.arrow_circle_right_outlined),
            title: Text(
              'Domino\'s have new Coupon',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    );
  }
}
