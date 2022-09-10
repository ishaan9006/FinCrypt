import 'package:fincrypt/widgets/custom_button_moneyop.dart';
import 'package:flutter/material.dart';

class PortfolioBox extends StatefulWidget {
  const PortfolioBox({Key? key}) : super(key: key);

  @override
  State<PortfolioBox> createState() => _PortfolioBoxState();
}

class _PortfolioBoxState extends State<PortfolioBox> {
  @override
  Widget build(BuildContext context) {
    int amount = 10000;
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      height: height / 3.5,
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
            SizedBox(
              height: 8,
            ),
            Text(
              'Portfolio',
              style: TextStyle(
                  fontSize: 28,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w700,
                  color: Colors.grey[600]),
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
                      fontWeight: FontWeight.w500),
                ),
                Icon(
                  Icons.bar_chart_rounded,
                  size: 45,
                )
              ],
            ),
            SizedBox(
              height: 26,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Button(
                    onTap: () => {},
                    icon: Icons.candlestick_chart_outlined,
                    color: Color.fromRGBO(224, 237, 253, 1),
                    Iconcolor: Colors.blue,
                    text: 'Invest'),
                Button(
                    onTap: () => {},
                    icon: Icons.monetization_on_outlined,
                    color: Color.fromRGBO(255, 238, 223, 1),
                    Iconcolor: Color.fromARGB(255, 253, 141, 44),
                    text: 'Withdraw'),
                Button(
                    onTap: () => {},
                    icon: Icons.grid_view_outlined,
                    color: Color.fromRGBO(240, 241, 244, 1),
                    Iconcolor: Color.fromARGB(255, 137, 155, 209),
                    text: 'More'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
