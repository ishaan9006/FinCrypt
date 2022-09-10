import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icon;
  final Color Iconcolor;
  final Color color;
  final String text;
  const Button({
    Key? key,
    required this.onTap,
    required this.icon,
    required this.Iconcolor,
    required this.color,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              primary: color,
              minimumSize: Size(80, 50),
              elevation: 1),
          child: Icon(
            icon,
            color: Iconcolor,
            size: 28,
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          '$text',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
