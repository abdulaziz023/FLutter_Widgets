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
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: GridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 1,
                controller: controller,
                padding: const EdgeInsets.all(10),
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: const [
                  ColoredBox(color: Colors.red),
                  ColoredBox(color: Colors.yellow),
                  ColoredBox(color: Colors.green),
                  ColoredBox(color: Colors.blue),
                  ColoredBox(color: Colors.red),
                  ColoredBox(color: Colors.yellow),
                  ColoredBox(color: Colors.green),
                  ColoredBox(color: Colors.blue),
                  ColoredBox(color: Colors.red),
                  ColoredBox(color: Colors.yellow),
                  ColoredBox(color: Colors.green),
                  ColoredBox(color: Colors.blue),
                ],
              ),
            ),
            Expanded(
              child: Text("SALOMM"),
            )
          ],
        ),
      ),
    );
  }
}
