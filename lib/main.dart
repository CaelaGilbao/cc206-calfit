import 'features/userprofile.dart';
import 'features/foodsuggestion.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp()); // Call the function from the imported file
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlue ),
        useMaterial3: true,
      ),
      home: const FoodSuggestion(),
    );
  }
}
