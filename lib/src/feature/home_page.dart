import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    print("Init State");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            // autofocus: true,
            controller: _controller,
            inputFormatters: [
              // FilteringTextInputFormatter.allow(RegExp(r"[a-z]"))
            ],
            keyboardType: TextInputType.text,
            // maxLength: 0,
            // minLines: 5,
            // maxLines: 10,
            decoration: const InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(color: Colors.blue),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(color: Colors.yellow),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                borderSide: BorderSide(color: Colors.red),
              ),
            ),
            cursorColor: Colors.red,
            onChanged: (value) {
              print("On changed $value");
            },
            onTap: () {
              print("On tapped");
            },
            onSubmitted: (value) {
              print("Submitted $value");
            },
          ),
        ),
      ),
    );
  }
}
