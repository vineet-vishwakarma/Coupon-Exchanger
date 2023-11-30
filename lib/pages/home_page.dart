import 'package:coupon_exchanger/pages/available_coupons_page.dart';
import 'package:coupon_exchanger/widgets/custom_appbar.dart';
import 'package:coupon_exchanger/widgets/homepage_items.dart';
import 'package:coupon_exchanger/widgets/mybottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController searchItem = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const CustomAppbar(),
              const SizedBox(height: 20),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 0.0, horizontal: 5.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const HomePageItems(
                          icon: Icons.bookmarks,
                          title: 'My Coupons',
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const AvailableCouponsPage(),
                              ),
                            );
                          },
                          child: const HomePageItems(
                            icon: Icons.airplane_ticket_sharp,
                            title: 'Available Coupons',
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        HomePageItems(
                          icon: Icons.download,
                          title: 'Import Coupons',
                        ),
                        HomePageItems(
                          icon: Icons.manage_search_rounded,
                          title: 'Discover Coupons',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
        bottomNavigationBar: const MyBottomNavigationBar(),
      ),
    );
  }
}
