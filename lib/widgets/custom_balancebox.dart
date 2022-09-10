import 'dart:ui';

import 'package:flutter/material.dart';

class CustomBalanceBox extends StatefulWidget {
  const CustomBalanceBox({Key? key}) : super(key: key);

  @override
  State<CustomBalanceBox> createState() => _CustomBalanceBoxState();
}

class _CustomBalanceBoxState extends State<CustomBalanceBox> {
  @override
  Widget build(BuildContext context) {
    int amount = 10000;
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      height: height / 5,
      width: width - 60,
      margin: EdgeInsets.fromLTRB(30, 80, 20, 10),
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(25)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Available Balance',
              style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '₹ $amount',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.w800),
                ),
                Image.asset(
                  'assets/images/india.png',
                  height: 40,
                  width: 40,
                ), // Im
              ],
            ),
            SizedBox(
              height: 26,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      'See More',
                      style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      height: 15,
                      width: 15,
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.all(Radius.circular(25))),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: 12,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'INR',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                    Icon(
                      Icons.arrow_drop_down_rounded,
                      color: Colors.blue,
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
