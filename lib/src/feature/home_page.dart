import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController pageController = PageController();
  int index = 0;
  List<String> names = ["Abdulloh", "Akmal", "Anvar", "Qodir"];
  List<Color> colors = [Colors.red, Colors.yellow, Colors.green, Colors.black];

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.custom(
        padding: EdgeInsets.symmetric(vertical: 10),
        itemExtent: 50,
        childrenDelegate: SliverChildListDelegate(
          [
            SizedBox(
              height: 100,
              child: ColoredBox(color: Colors.black),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 100,
              child: ColoredBox(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
