import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> images = ["images/dados/1.png", "images/dados/1.png"];

  void randonDados() {
    Random random = Random();
    int numeroSort;
    for (int i = 0; i < images.length; i++) {
      numeroSort = random.nextInt(5) + 1;
      images[i] = "images/dados/$numeroSort.png";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Dados Virtuais",
        ),
      ),
      body: Center(
        child: Row(
          children: [
            for (String image in images)
              Expanded(
                child: TextButton(
                  onPressed: () => {randonDados(), setState(() {})},
                  child: Image.asset(
                    image,
                    height: 300,
                    width: 300,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
