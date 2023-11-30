import 'package:coupon_exchanger/pages/notifications_page.dart';
import 'package:coupon_exchanger/pages/search_page.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Coupon Exchanger',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    textBaseline: TextBaseline.alphabetic),
              ),
              IconButton(
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const NotificationPage(),
                    ),
                  );
                },
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SearchBar(
            onSubmitted: (value) {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SearchPage()));
            },
            hintText: 'Search Coupons',
            hintStyle: const MaterialStatePropertyAll(
              TextStyle(fontWeight: FontWeight.bold),
            ),
            leading: const Icon(Icons.search),
            constraints: const BoxConstraints(
              minHeight: 40,
            ),
          ),
        ],
      ),
    );
  }
}
