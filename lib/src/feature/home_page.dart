import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lesson_project/src/feature/new_page.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int increment = 0;
  bool check = false;
  bool show = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("$increment"),
            SizedBox(
              height: 50,
              width: 150,
              child: ElevatedButton(
                onPressed: () {
                  print("On tap");
                },
                onLongPress: () {
                  print("Long press");
                },
                onHover: (value) {
                  print(value);
                },
                style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.amber),
                    elevation: const WidgetStatePropertyAll(10),
                    overlayColor: const WidgetStatePropertyAll(Colors.red),
                    shadowColor: const WidgetStatePropertyAll(Colors.yellow)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.mail),
                    Text("Gmail"),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 112,
              child: CheckboxMenuButton(
                value: check,
                onChanged: (bool? value) {
                  setState(() {
                    // check = !check;
                    check = value!;
                  });
                },
                child: const Text("DATA"),
              ),
            ),
            RawMaterialButton(
              onPressed: () {
                setState(() {
                  show = !show;
                  check = !check;
                });
              },
              child: const Text("Row Material Button"),
            ),
            show ? const Text("Salom") : const Text(""),
            CupertinoButton(
              child: const Text("CupertinoButton"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const NewPage(),
                  ),
                );
              },
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            increment++;
          });
        },
        backgroundColor: Colors.blueAccent,
        child: const Icon(Icons.add_box),
      ),
    );
  }
}
