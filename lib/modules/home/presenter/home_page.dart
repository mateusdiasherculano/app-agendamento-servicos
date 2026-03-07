import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Scheduling')),
      body: Center(child: Text('Which service would you like to schedule?')),
    );
  }
}
