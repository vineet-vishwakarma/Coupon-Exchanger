import 'package:coupon_exchanger/widgets/coupons.dart';
import 'package:coupon_exchanger/widgets/mybottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    String query = 'Souled Store';
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          toolbarHeight: 70,
          centerTitle: true,
          title: const Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: SearchBar(
              side: MaterialStatePropertyAll(BorderSide.none),
              elevation: MaterialStatePropertyAll(1),
              hintText: 'Search Coupons',
              hintStyle: MaterialStatePropertyAll(
                TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Icon(Icons.search),
              constraints: BoxConstraints(
                minHeight: 40,
              ),
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(top: 10.0, right: 16),
              child: Icon(Icons.cancel_outlined),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  'Search Results For $query',
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index) => const Center(
                      child: Column(
                    children: [
                      SizedBox(height: 10),
                      Coupons(),
                    ],
                  )),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: const MyBottomNavigationBar(),
      ),
    );
  }
}
