import 'package:coupon_exchanger/widgets/mybottom_navigation_bar.dart';
import 'package:coupon_exchanger/widgets/notification.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Notifications',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) => const Notifications(),
              ),
            ),
          ],
        ),
        bottomNavigationBar: const MyBottomNavigationBar(),
      ),
    );
  }
}
