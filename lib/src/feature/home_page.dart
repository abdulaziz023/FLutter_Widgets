import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController pageController = PageController();
  int index = 0;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        addRepaintBoundaries: true,
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(20),
        scrollDirection: Axis.vertical,
        itemExtent: 100,
        children: [
          SizedBox(
            height: 100,
            width: 200,
            child: ColoredBox(color: Colors.black),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 100,
            width: 200,
            child: ColoredBox(color: Colors.black),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 100,
            width: 200,
            child: ColoredBox(color: Colors.black),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 100,
            width: 200,
            child: ColoredBox(color: Colors.black),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 100,
            width: 200,
            child: ColoredBox(color: Colors.black),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 100,
            width: 200,
            child: ColoredBox(color: Colors.black),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 100,
            width: 200,
            child: ColoredBox(color: Colors.black),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 100,
            width: 200,
            child: ColoredBox(color: Colors.black),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
