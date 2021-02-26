import 'package:demo2/favouites.dart';
import 'package:demo2/home.dart';
import 'package:demo2/profile.dart';
import 'package:demo2/search.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen2());
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Hello'),
          centerTitle: true,
        ),
        body: Center(
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 200,
                      width: 200,
                      child:
                          Image.asset('assets/images/a.jpg', fit: BoxFit.fill)),
                  Text('abcd'),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 200,
                      width: 200,
                      child:
                          Image.asset('assets/images/b.jpg', fit: BoxFit.fill)),
                  Text(
                    'bcdf',
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: 200,
                      width: 200,
                      child: Image.network(
                          'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2002&q=80')),
                  Text(
                    'cdfe',
                  )
                ],
              ),
            ],
          ),
        ));
  }
}

class HomeScreen2 extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen2> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget screens(int index) {
      if (index == 0) {
        return Home();
      }
      if (index == 1) {
        return Favourites();
      }
      if (index == 2) {
        return Search();
      }
      if (index == 3) {
        return Profile();
      }
    }

    void onIconsTapped(int index) {
      setState(() {
        currentIndex = index;
      });
    }

    return Scaffold(
      body: screens(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onIconsTapped,
        unselectedItemColor: Colors.blue,
        selectedItemColor: Colors.green,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favourites'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
