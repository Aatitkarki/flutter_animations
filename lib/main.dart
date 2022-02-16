import 'package:flutter/material.dart';
import 'package:flutter_animations/animated_align_widget.dart';

import 'animated_position_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedAlignmentWidget(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation Examples'),
      ),
      body: Column(
        children: [
          TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AnimatedPositionWidget()));
              },
              child: Text(
                'Animated Positioned Widget',
                style: Theme.of(context).textTheme.bodyMedium,
              )),
          TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AnimatedPositionWidget()));
              },
              child: Text(
                'Animated Positioned Widget',
                style: Theme.of(context).textTheme.bodyMedium,
              )),
          TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AnimatedPositionWidget()));
              },
              child: Text(
                'Animated Positioned Widget',
                style: Theme.of(context).textTheme.bodyMedium,
              )),
          TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AnimatedPositionWidget()));
              },
              child: Text(
                'Animated Positioned Widget',
                style: Theme.of(context).textTheme.bodyMedium,
              )),
          TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.green),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const AnimatedPositionWidget()));
              },
              child: Text(
                'Animated Positioned Widget',
                style: Theme.of(context).textTheme.bodyMedium,
              )),
        ],
      ),
    );
  }
}
