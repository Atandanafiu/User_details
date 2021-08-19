import 'package:flutter/material.dart';
import 'package:user_info_collector/welcome_screen.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {




  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WelcomeScreen(),
    );
  }
}


