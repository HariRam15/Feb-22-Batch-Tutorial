import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text('Search Screen'),
      ),
      body: Center(
        child: Text('This is the Search Screen'),
      ),
    );
  }
}
