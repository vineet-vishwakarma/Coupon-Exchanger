// import 'package:coupon_exchanger/pages/home_page.dart';
// import 'package:coupon_exchanger/pages/loginpage.dart';
import 'package:coupon_exchanger/pages/available_coupons_page.dart';
import 'package:coupon_exchanger/pages/home_page.dart';
import 'package:coupon_exchanger/pages/loginpage.dart';
import 'package:coupon_exchanger/pages/notifications_page.dart';
import 'package:coupon_exchanger/pages/search_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coupon Exchanger',
      theme: ThemeData.light(useMaterial3: true),
      home: PageView(
        children: const [
          LoginPage(),
          HomePage(),
          AvailableCouponsPage(),
          SearchPage(),
          NotificationPage(),
        ],
      ),
    );
  }
}
