import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController pageController = PageController();
  int index = 0;
  List<String> names = ["Abdulloh", "Akmal", "Anvar", "Qodir"];
  List<Color> colors = [
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.black,
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.black,
  ];
  ScrollController controller = ScrollController();

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GridView(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 10,
          ),
          children: [],
        ),
      ),
    );
  }
}
