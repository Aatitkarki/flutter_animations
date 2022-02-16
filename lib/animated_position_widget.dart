import 'package:flutter/material.dart';

class AnimatedPositionWidget extends StatefulWidget {
  const AnimatedPositionWidget({Key? key}) : super(key: key);

  @override
  _AnimatedPositionWidgetState createState() => _AnimatedPositionWidgetState();
}

class _AnimatedPositionWidgetState extends State<AnimatedPositionWidget> {
  double height = 100;
  double width = 100;
  // double right = 10;
  double left = 0;
  @override
  Widget build(BuildContext context) {
    double totalWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedPosition'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          setState(() {
            height = height == 100 ? 200 : 100;
            width = width == 100 ? 200 : 100;
            // right = right == 10 ? 20 : 10;
            left = left == 0 ? totalWidth : 0;
          });
        }),
        child: const Icon(Icons.add),
      ),
      body: Stack(
        children: [
          // AnimatedPositioned(
          //     height: height,
          //     width: width,
          //     left: left,
          //     child: Container(
          //       height: 10,
          //       width: 10,
          //       padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          //       decoration: BoxDecoration(color: Colors.blue),
          //     ),
          //     curve: Curves.fastOutSlowIn,
          //     duration: Duration(seconds: 2)),
          AnimatedPositioned(
            height: height,
            width: width,
            left: left,
            curve: Curves.fastOutSlowIn,
            duration: Duration(seconds: 2),
            child: Container(
              height: 10,
              width: 10,
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.blue),
            ),
          )
        ],
      ),
    );
  }
}
