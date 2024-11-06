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
      body: PageView(
        controller: pageController,
        onPageChanged: (value) {
          setState(() {
            index = value;
          });
        },
        children: [
          Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Switch(
                value: false,
                onChanged: (value) {},
              ),
              ElevatedButton(onPressed: () {}, child: Text("Elevated buton"))
            ],
          )),
          Center(child: Text("Profile Page")),
          Center(child: Text("Favourite Page")),
          Center(child: Text("Settings Page")),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.person), label: "Profile"),
          NavigationDestination(icon: Icon(Icons.star), label: "Favourite"),
          NavigationDestination(icon: Icon(Icons.settings), label: "Settings"),
        ],
        animationDuration: const Duration(seconds: 1),
        indicatorColor: Colors.red,
        backgroundColor: Colors.blue,
        overlayColor: const WidgetStatePropertyAll(Colors.yellow),
        elevation: 10,
        selectedIndex: index,
        onDestinationSelected: (value) {
          setState(() {
            index = value;
            pageController.jumpToPage(value);
          });
        },
      ),
    );
  }
}
