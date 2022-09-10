import 'package:flutter/material.dart';

class CustomAppButton extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  final bool isCircle;
  const CustomAppButton(
      {Key? key,
      required this.onTap,
      required this.icon,
      required this.isCircle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: isCircle ? Colors.white : Colors.transparent,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(40)),
      ),
      child: Center(
          child: Icon(
        icon,
        color: isCircle ? Colors.black : Colors.white,
      )),
    );
  }
}
