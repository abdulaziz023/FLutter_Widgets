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
  List<Color> colors = [Colors.red, Colors.yellow, Colors.green, Colors.black];

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemBuilder: (context, index) {
            return const SizedBox(
              height: 100,
              child: ColoredBox(
                color: Colors.red,
                child: Text("ITEM BUILDER"),
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 100,
              child: ColoredBox(
                color: Colors.yellow,
                child: Text("SEPERATED BUILDER"),
              ),
            );
          },
          itemCount: 10),
    );
  }
}
