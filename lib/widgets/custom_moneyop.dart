import 'package:fincrypt/widgets/custom_button_moneyop.dart';
import 'package:flutter/material.dart';

import 'custom_buildsheet.dart';

class MoneyOperationsBox extends StatelessWidget {
  const MoneyOperationsBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      height: height / 6.5,
      width: width - 60,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.all(Radius.circular(14)),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Button(
                    onTap: () => showModalBottomSheet(
                        context: context,
                        enableDrag: false,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(
                                top: Radius.circular(20))),
                        builder: (context) => buildSheet()),
                    icon: Icons.add,
                    color: Color.fromRGBO(224, 237, 253, 1),
                    Iconcolor: Colors.blue,
                    text: 'Add money'),
                Button(
                    onTap: () => {},
                    icon: Icons.subdirectory_arrow_right_rounded,
                    color: Color.fromRGBO(255, 238, 223, 1),
                    Iconcolor: Color.fromARGB(255, 253, 141, 44),
                    text: 'Send money'),
                Button(
                    onTap: () => {},
                    icon: Icons.addchart_outlined,
                    color: Color.fromRGBO(240, 241, 244, 1),
                    Iconcolor: Color.fromARGB(255, 137, 155, 209),
                    text: 'Invest money'),
              ]),
        ],
      ),
    );
  }
}
