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
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              SizedBox(
                height: 100,
                width: double.infinity,
                child: ColoredBox(color: colors[index]),
              ),
              Text(names[index])
            ],
          );
        },
      ),
    );
  }
}
