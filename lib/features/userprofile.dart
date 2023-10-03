// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key});

  @override
  Widget build(BuildContext context) {
    Color customBlue = Color(int.parse("0xFF0C2D48"));
    Color customGray = Color(int.parse("0xFFABABAB"));

    return Scaffold(
      appBar: AppBar(
        backgroundColor: customBlue,
        title: Text(
          "Profile",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        centerTitle: true,
      ),
      body: Container(
        color: customBlue,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/profilepic.jpg'),
                    radius: 50.0,
                  ),
                  SizedBox(width: 20.0), // Add spacing between the profile picture and text
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Rosie Kim", // Username
                        style: TextStyle(
                          fontSize: 20, // Adjust font size as needed
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 8.0), // Add spacing below the username
                      Text(
                        "Edit Profile Photo",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: customGray,
                          decoration: TextDecoration.underline,
                          decorationColor: customGray,
                        ),
                      ),
                    ],
                  ),
                  Spacer(), // Add a spacer to push the age and gender to the right
                ],
              ),
              SizedBox(height: 8.0), // Add spacing below the row
              Row(
                children: [
                  Text(
                    "Age:",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 8.0), // Add spacing between "Age:" and value
                  Text(
                    "21", // Replace with the actual age value
                    style: TextStyle(
                      fontSize: 16,
                      color: customGray,
                    ),
                  ),
                  SizedBox(width: 16.0), // Add spacing between age and gender
                  Text(
                    "Gender:",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 8.0), // Add spacing between "Gender:" and value
                  Text(
                    "Female", // Replace with the actual gender value
                    style: TextStyle(
                      fontSize: 16,
                      color: customGray,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8.0), // Add spacing below the age and gender
              Row(
                children: [
                  Text(
                    "Weight:",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 8.0), // Add spacing between "Weight:" and value
                  Text(
                    "150 lbs", // Replace with the actual weight value
                    style: TextStyle(
                      fontSize: 16,
                      color: customGray,
                    ),
                  ),
                  SizedBox(width: 16.0), // Add spacing between weight and height
                  Text(
                    "Height:",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 8.0), // Add spacing between "Height:" and value
                  Text(
                    "5'6\"", // Replace with the actual height value
                    style: TextStyle(
                      fontSize: 16,
                      color: customGray,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.0), // Add spacing below the weight and height
              // Add Dropdowns for Weight Goal, Weight Target Goal, and Activity Level
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Weight Goal:",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  DropdownButton<String>(
                    items: <String>['Lose Weight', 'Maintain Weight', 'Gain Weight'] // Replace with your weight goal options
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(
                            fontSize: 16,
                            color: customGray,
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      // Handle weight goal dropdown change
                    },
                  ),
                  SizedBox(height: 16.0), // Add spacing between dropdowns
                  Text(
                    "Weight Target Goal:",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  DropdownButton<String>(
                    items: <String>['Lose Weight', 'Maintain Weight', 'Gain Weight'] // Replace with your weight target goal options
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(
                            fontSize: 16,
                            color: customGray,
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      // Handle weight target goal dropdown change
                    },
                  ),
                  SizedBox(height: 16.0), // Add spacing between dropdowns
                  Text(
                    "Activity Level:",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  DropdownButton<String>(
                    items: <String>['Sedentary', 'Lightly Active', 'Moderately Active', 'Very Active'] // Replace with your activity level options
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(
                            fontSize: 16,
                            color: customGray,
                          ),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      // Handle activity level dropdown change
                    },
                  ),
                  SizedBox(height: 16.0), // Add spacing below the dropdowns
              // Add "Save Profile" button
              ElevatedButton(
                onPressed: () {
                  // Handle "Save Profile" button click
                  // You can access the selected values using weightGoalValue, weightTargetValue, and activityLevelValue.
                },
                child: Text(
                  "Save Profile",
                  style: TextStyle(fontSize: 16),
                ),
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
