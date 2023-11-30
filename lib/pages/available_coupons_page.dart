import 'package:coupon_exchanger/widgets/categories_coupons.dart';
import 'package:coupon_exchanger/widgets/custom_appbar.dart';
import 'package:coupon_exchanger/widgets/mybottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class AvailableCouponsPage extends StatefulWidget {
  const AvailableCouponsPage({super.key});

  @override
  State<AvailableCouponsPage> createState() => _AvailableCouponsPageState();
}

class _AvailableCouponsPageState extends State<AvailableCouponsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0),
          child: Column(
            children: [
              const CustomAppbar(),
              const SizedBox(height: 10),
              const Text(
                'Available Coupons',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => const CategoriesCoupons(),
                  itemCount: 5,
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: const MyBottomNavigationBar(),
      ),
    );
  }
}
