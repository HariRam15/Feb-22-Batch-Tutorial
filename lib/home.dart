import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Text('This is the Home Screen'),
      ),
    );
  }
}
