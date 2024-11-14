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
        body: RefreshIndicator(
          backgroundColor: Colors.yellow,
          color: Colors.red,
          // displacement: 50,
          // edgeOffset: 200,
          semanticsLabel: 'salom',
          strokeWidth: 5,

          onRefresh: () async {
            return Future.delayed(
              const Duration(seconds: 1),
              () {
                print("Refresh qildiz");
              },
            );
          },
          child: GridView(
            padding: EdgeInsets.all(20),
            //ALign and Alignment
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                crossAxisSpacing: 30,
                mainAxisSpacing: 10),
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: ColoredBox(color: Colors.red),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: ColoredBox(color: Colors.yellow),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
