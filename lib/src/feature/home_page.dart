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
        body: Column(
          children: [
            Expanded(
              child: PageView(
                onPageChanged: (value) {
                  setState(() {
                    index = value;
                  });
                },
                controller: pageController,
                children: const [
                  Center(
                    child: SizedBox(
                      height: 400,
                      width: 400,
                      child: ColoredBox(color: Colors.black),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      height: 400,
                      width: 400,
                      child: ColoredBox(color: Colors.pink),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      height: 400,
                      width: 400,
                      child: ColoredBox(color: Colors.yellow),
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      height: 400,
                      width: 400,
                      child: ColoredBox(color: Colors.green),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      pageController.animateToPage(index - 1,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut);
                    });
                  },
                  icon: const Icon(Icons.arrow_left),
                ),
                Icon(
                  Icons.circle_rounded,
                  color: index == 0 ? Colors.red : Colors.black,
                ),
                const SizedBox(width: 5),
                Icon(
                  Icons.circle_rounded,
                  color: index == 1 ? Colors.red : Colors.black,
                ),
                const SizedBox(width: 5),
                Icon(
                  Icons.circle_rounded,
                  color: index == 2 ? Colors.red : Colors.black,
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      pageController.animateToPage(index + 1,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut);
                    });
                  },
                  icon: const Icon(Icons.arrow_right),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
