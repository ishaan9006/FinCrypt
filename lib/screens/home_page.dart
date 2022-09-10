import 'dart:math';

import 'package:fincrypt/screens/community_page.dart';
import 'package:fincrypt/screens/report_page.dart';
import 'package:fincrypt/screens/stock_page.dart';
import 'package:fincrypt/widgets/custom_listbox.dart';
import 'package:fincrypt/widgets/custom_moneyop.dart';
import 'package:fincrypt/widgets/custom_appbar_button.dart';
import 'package:fincrypt/widgets/custom_balancebox.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Container(
        height: height,
        width: width,
        color: Colors.grey[100],
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: height / 4.5,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(6, 102, 236, 1),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomAppButton(
                        onTap: () => {},
                        icon: Icons.abc,
                        isCircle: true,
                      ),
                      Row(
                        children: [
                          CustomAppButton(
                            onTap: () => {},
                            icon: Icons.search,
                            isCircle: false,
                          ),
                          CustomAppButton(
                            onTap: () => {},
                            icon: Icons.notifications_none_outlined,
                            isCircle: false,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                const CustomBalanceBox(),
              ],
            ),
            const SizedBox(height: 20),
            const MoneyOperationsBox(),
            const SizedBox(height: 6),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Transactions',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'See all',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 8, 137, 242)),
                  ),
                ),
              ],
            ),
            ListBox(
                transactions: List<String>.generate(
                  60,
                  (i) => "Transaction $i",
                ),
                amount: List<int>.generate(
                  60,
                  (i) => Random().nextInt(100) + 50,
                ),
                heightNum: 3.8),
          ],
        ),
      ),
    );
  }
}
