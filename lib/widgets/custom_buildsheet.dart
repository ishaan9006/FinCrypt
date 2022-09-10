import 'package:flutter/material.dart';

class buildSheet extends StatefulWidget {
  buildSheet({Key? key}) : super(key: key);

  @override
  State<buildSheet> createState() => _buildSheetState();
}

class _buildSheetState extends State<buildSheet> {
  final myController = TextEditingController();
  @override
  void initState() {
    super.initState();
    myController.addListener(_printLatestValue);
  }

  void _printLatestValue() {
    print('Second text field: ${myController.text}');
  }

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  var amnt = 5000;
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: ListView(
        children: [
          Text(
            'Select the Amount',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
          ),
          SizedBox(height: 6),
          Text(
            'Move the slider to select the amount',
            style: TextStyle(fontSize: 15, color: Colors.grey[700]),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: TextField(
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w700,
                letterSpacing: 1,
              ),
              controller: myController,
              maxLength: 5,
              decoration: InputDecoration(
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                hintText: '$amnt',
              ),
              onChanged: (text) {
                setState(() {
                  amnt = int.parse(text);
                });
              },
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "₹1",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
              Slider(
                  value: amnt.toDouble(),
                  thumbColor: Color.fromRGBO(6, 102, 236, 1),
                  min: 1,
                  max: 10000,
                  divisions: 200,
                  activeColor: Color.fromARGB(255, 161, 197, 241),
                  inactiveColor: Colors.white,
                  onChanged: (double newValue) {
                    setState(() {
                      amnt = newValue.round();
                      myController.text = amnt.toString();
                    });
                  },
                  semanticFormatterCallback: (double newValue) {
                    return '${newValue.round()} dollars';
                  }),
              Text(
                "₹10,000",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              ),
            ],
          ),
          SizedBox(
            height: 60,
          ),
          ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                primary: Color.fromRGBO(6, 102, 236, 1),
                minimumSize: Size(80, 60),
                elevation: 1,
              ),
              child: Text(
                'Add Money',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1,
                ),
              )),
          Padding(
            padding: EdgeInsets.all(10),
          ),
        ],
      ),
    );
  }
}
