import 'package:flutter/material.dart';

class AnimatedAlignmentWidget extends StatefulWidget {
  const AnimatedAlignmentWidget({Key? key}) : super(key: key);

  @override
  _AnimatedAlignmentWidgetState createState() =>
      _AnimatedAlignmentWidgetState();
}

class _AnimatedAlignmentWidgetState extends State<AnimatedAlignmentWidget> {
  double height = 100;
  double width = 100;
  // double right = 10;
  Alignment alignment = Alignment.centerLeft;
  String text = "Buy";
  double left = 0;
  @override
  Widget build(BuildContext context) {
    double totalWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedPosition'),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                // border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(40)),
            child: Stack(
              children: [
                AnimatedAlign(
                  widthFactor: 1.9,
                  alignment: alignment,
                  curve: Curves.linear,
                  duration: const Duration(milliseconds: 400),
                  child: Container(
                    height: 40,
                    width: 60,
                    // padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.green),
                  ),
                ),
                InkWell(
                  onTap: (() {
                    setState(() {
                      alignment = alignment == Alignment.centerLeft
                          ? Alignment.centerRight
                          : Alignment.centerLeft;
                      text = text == "Buy" ? "Sell" : "Buy";
                    });
                  }),
                  child: SizedBox(
                    height: 40,
                    width: 60 * 1.8,
                    // color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Text("Buy"),
                          // Spacer(),
                          Text("Sell"),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
