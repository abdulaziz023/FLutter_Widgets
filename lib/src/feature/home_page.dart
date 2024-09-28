import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController _controller = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

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
          child: Form(
            key: formKey,
            child: TextFormField(
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
                  prefix: Icon(Icons.person),
                  suffix: Icon(Icons.email),
                  hintText: "Pochta kiriting",
                  labelText: "Label text",
                  counterText: "Counter"),
              cursorColor: Colors.red,
              // onChanged: (value) {
              //   print("On changed $value");
              // },
              // onTap: () {
              //   print("On tapped");
              // },
              onFieldSubmitted: (value) {
                formKey.currentState!.validate();
              },
              validator: (value) {
                return value!.length < 3 ? "To'liq kiriting" : null;
              },
            ),
          ),
        ),
      ),
    );
  }
}
