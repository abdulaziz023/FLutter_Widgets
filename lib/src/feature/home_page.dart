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
  List<String> images = [
    "assets/image/car.jpg",
    "assets/image/roses.jpeg",
    "assets/image/winter.jpg",
    "assets/image/car.jpg",
    "assets/image/roses.jpeg",
    "assets/image/winter.jpg",
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
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              // title: Text("SliverAppBar"),
              // centerTitle: true,

              pinned: true,

              backgroundColor: Colors.amber,
              actions: const [Text("DATA")],
              flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset("assets/image/car.jpg"),
                  title: const Text("FlexibleSpaceBar"),
                  centerTitle: true),
              expandedHeight: 240,
            ),
            SliverGrid(
              delegate: SliverChildListDelegate(
                [
                  Image.asset(images[1]),
                  Image.asset("assets/image/car.jpg"),
                ],
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
              ),
            ),
            SliverGrid.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                crossAxisSpacing: 5,
                mainAxisSpacing: 5,
              ),
              itemCount: images.length,
              itemBuilder: (context, index) {
                print(index);
                return Image.asset(images[index]);
              },
            ),
          ],
        ),
      ),
    );
  }
}
