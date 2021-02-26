import 'package:flutter/material.dart';

class Favourites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text('Favourites Screen'),
      ),
      body: Center(
        child: Text('This is the Favourites Screen'),
      ),
    );
  }
}
