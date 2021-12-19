import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          "assets/images/pokeball.png",
        ),
        title: Image.asset(
          "assets/images/pokemon_logo.png",
          width: 190,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // write your logic for search
            },
          ),
        ],
      ),
      body: Center(
        child: Text("Welcome Devs"),
      ),
    );
  }
}
