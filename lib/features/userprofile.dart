// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key});

  @override
  Widget build(BuildContext context) {
    Color customBlue = Color(int.parse("0xFF0C2D48"));
    Color customGray = Color(int.parse("0xFFABABAB"));

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Profile',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            backgroundColor: customBlue,
            centerTitle: true,
            elevation: 0.0,
            leading: Icon(Icons.arrow_back),
          ),
          body: Container(
            color: customBlue,
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              children: <Widget>[
                Row(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/profilepic.jpg'),
                      radius: 35.0,
                    ),
                    SizedBox(width: 18.0),
                    Text(
                      'Edit profile picture',
                      style: TextStyle(
                        fontSize: 11.0,
                        decoration: TextDecoration.underline,
                        color: customGray,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    SizedBox(height: 50.0),
                    Text(
                      'Username',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: customGray,
                      ),
                    ),
                    SizedBox(width: 20.0),
                    Text(
                      'Rosie Kim',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    SizedBox(height: 50.0),
                    Text(
                      'Age',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: customGray,
                      ),
                    ),
                    SizedBox(width: 15.0),
                    Text(
                      '20',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 4.0),
                    Icon(
                      Icons.keyboard_arrow_down,
                      size: 13.0,
                      color: Colors.white,
                    ),
                    SizedBox(width: 85.0),
                    Text(
                      'Gender',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: customGray,
                      ),
                    ),
                    SizedBox(width: 15.0),
                    Text(
                      'Female',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 4.0),
                    Icon(
                      Icons.keyboard_arrow_down,
                      size: 13.0,
                      color: Colors.white,
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    SizedBox(height: 50.0),
                    Text(
                      'Weight',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: customGray,
                      ),
                    ),
                    SizedBox(width: 15.0),
                    Text(
                      '72 kg',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 4.0),
                    Icon(
                      Icons.keyboard_arrow_down,
                      size: 13.0,
                      color: Colors.white,
                    ),
                    SizedBox(width: 42.0),
                    Text(
                      'Height',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: customGray,
                      ),
                    ),
                    SizedBox(width: 15.0),
                    Text(
                      '5\'2 ft',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(width: 4.0),
                    Icon(
                      Icons.keyboard_arrow_down,
                      size: 13.0,
                      color: Colors.white,
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    SizedBox(height: 70.0),
                    Text(
                      "Weight Goal",
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 20.0),
                    DropdownButton<String>(
                      items: <String>[
                        'Lose Weight',
                        'Maintain Weight',
                        'Gain Weight'
                      ].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {},
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    SizedBox(height: 70.0),
                    Text(
                      "Weight Target",
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 8.0),
                    DropdownButton<String>(
                      items: <String>[
                        'Lose Weight',
                        'Maintain Weight',
                        'Gain Weight'
                      ].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {},
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    SizedBox(height: 70.0),
                    Text(
                      "Activity Level",
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 12.0),
                    DropdownButton<String>(
                      items: <String>[
                        'Sedentary',
                        'Lightly Active',
                        'Moderate Active',
                        'Very Active'
                      ].map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {},
                    ),
                  ],
                ),
                SizedBox(height: 45.0),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Save Profile",
                    style: TextStyle(fontSize: 13),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
