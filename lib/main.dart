import 'package:flutter/material.dart';
import 'package:tic_tac_toe/Features/menu_screen/menu_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.sizeOf(context).width;
    double h = MediaQuery.sizeOf(context).height;

    return MenuScreen();
  }
}




////////////////////////////////////////////
///////// Some Parts need to refactor //////
////////////////////////////////////////////
/// - game over function
/// - check function
/// - auto generate container of X-O
/// - Responsive layout for different screen sizes
/// - Display current player's turn
/// - Options to customize game appearance or rules
/// - Implement AI opponent with adjustable difficulty levels
/// -  Game history: Keep track of past games and their outcomes
/// - Add support for multiple players
/// - Add sounds for placing moves, winning, and drawing
/// -  Add a "Restart" button to reset the game
/// - shared variable for player1 and player2 (with cubit)
/// - add music
/// - increase performance
/// - add back buttom
/// - add background music