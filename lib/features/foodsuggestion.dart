import 'package:flutter/material.dart';

class FoodSuggestion extends StatelessWidget {
  const FoodSuggestion({Key? key});

  @override
  Widget build(BuildContext context) {
    Color customBlue = Color(int.parse("0xFF0C2D48"));
    Color customGray = Color(int.parse("0xFFABABAB"));

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Image.asset(
            'assets/logo.png',
            height: 75,
          ),
          centerTitle: true,
          backgroundColor: customBlue,
          elevation: 0.0,
        ),
        body: Container(
          color: customBlue,
          padding: const EdgeInsets.fromLTRB(20.0, 0, 20.0, 0),
          child: ListView(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(
                    Icons.keyboard_arrow_left,
                    color: Colors.white,
                  ),
                  Text(
                    'Dashboard',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 175),
                  Icon(
                    Icons.menu_rounded,
                    color: Colors.white,
                    size: 25,
                  )
                ],
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  'Food Suggestions',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
