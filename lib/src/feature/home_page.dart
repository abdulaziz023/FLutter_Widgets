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
              ElevatedButton(
                  onPressed: () {}, child: const Text("Elevated buton"))
            ],
          )),
          const Center(child: Text("Profile Page")),
          const Center(child: Text("Favourite Page")),
          const Center(child: Text("Settings Page")),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.yellow,
        // fixedColor: Colors.blue,
        landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
        selectedFontSize: 20,
        selectedItemColor: Colors.red,
        selectedIconTheme: IconThemeData(color: Colors.indigo),
        // showSelectedLabels: false,
        // showUnselectedLabels: false,
        unselectedFontSize: 30,
        unselectedIconTheme: IconThemeData(color: Colors.deepOrange),
        unselectedLabelStyle: TextStyle(
          fontWeight: FontWeight.bold,
        ),

        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home",
              activeIcon: Icon(Icons.circle)),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: "Person",
          ),
        ],
      ),
    );
  }
}
