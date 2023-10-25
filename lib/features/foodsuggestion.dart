import 'package:flutter/material.dart';

class FoodSuggestion extends StatelessWidget {
  const FoodSuggestion({Key? key});

  @override
  Widget build(BuildContext context) {
    Color customBlue = Color(int.parse("0xFF0C2D48"));

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
                  ),
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
              SizedBox(height: 20),
              // First Column with Two Boxes
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      // Box 1 (left)
                      Container(
                        width: 150,
                        height: 200,
                        color: Colors.blue,
                        child: Column(
                          children: <Widget>[
                            Image.asset('assets/image1.png'),
                            SizedBox(height: 10), // Add spacing between image and text
                            Text(
                              'Breakfast',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      // Box 2 (right)
                      Container(
                        width: 150,
                        height: 200,
                        color: Colors.green,
                        child: Column(
                          children: <Widget>[
                            Image.asset('assets/image2.jpg'),
                            SizedBox(height: 10), // Add spacing between image and text
                            Text(
                              'Lunch',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              // Second Column with Two Boxes
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      // Box 1 (left)
                      Container(
                        width: 150,
                        height: 200,
                        color: Colors.red,
                        child: Column(
                          children: <Widget>[
                            Image.asset('assets/image3.jpg'),
                            SizedBox(height: 10), // Add spacing between image and text
                            Text(
                              'Dinner',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      // Box 2 (right)
                      Container(
                        width: 150,
                        height: 150,
                        color: Colors.yellow,
                        child: Column(
                          children: <Widget>[
                            Image.asset('assets/image4.jpg'),
                            SizedBox(height: 10), // Add spacing between image and text
                            Text(
                              'Snack',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              // Third Column with Two Boxes (Add your new set of images and text here)
              Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      // Box 1 (left)
                      Container(
                        width: 150,
                        height: 200,
                        color: Colors.orange,
                        child: Column(
                          children: <Widget>[
                            Image.asset('assets/image5.jpg'),
                            SizedBox(height: 10), // Add spacing between image and text
                            Text(
                              'Snacks',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                      // Box 2 (right)
                      Container(
                        width: 150,
                        height: 200,
                        color: Colors.purple,
                        child: Column(
                          children: <Widget>[
                            Image.asset('assets/image6.jpg'),
                            SizedBox(height: 10), // Add spacing between image and text
                            Text(
                              'Drinks',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
