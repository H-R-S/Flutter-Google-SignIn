import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
          toolbarHeight: 80,
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 1,
          title: const Text(
            "Flutter Developer Test",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          )),
      body: const Center(
          child: Text("Home Screen",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold))),
    );
  }
}
