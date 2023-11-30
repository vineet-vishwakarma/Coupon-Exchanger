import 'package:coupon_exchanger/widgets/coupons.dart';
import 'package:flutter/material.dart';

class CategoriesCoupons extends StatelessWidget {
  const CategoriesCoupons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: Text(
            'Fashion',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 5),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Coupons(),
              Coupons(),
              Coupons(),
              Coupons(),
              Coupons(),
            ],
          ),
        ),
      ],
    );
  }
}
