import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/image/car.jpg"),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Container(
            height: 200,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://www.google.com/url?sa=i&url=https%3A%2F%2Fauto.goodfon.com%2Fmitsubishi%2Fwallpaper-mitsubishi-lancer-evolution-x-3892.html&psig=AOvVaw2e5b4eZtjZ3_Zpsap3zdZS&ust=1726565736167000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCLjG6uuUx4gDFQAAAAAdAAAAABAd"),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Image.asset(
            "assets/image/car.jpg",
          ),
          Image.network("URL")
        ],
      ),
    );
  }
}
