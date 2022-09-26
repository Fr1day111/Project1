import 'package:firstproject/Pages/BookPage.dart';
import 'package:flutter/material.dart';

import 'Pages/BookingPage.dart';
import 'Pages/CollectionPage.dart';
import 'Pages/FavoritePage.dart';
import 'Pages/OtpPage.dart';
import 'Pages/ProfilePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _screens = [];
  var _selectedIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _screens = [
      const CollectionPage(),
      const BookPage(),
      const FavoritePage(),
      const ProfilePage()
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _screens[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        fixedColor: Colors.deepPurple,
        items: const [
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("Assets/Icons/Collection.png")),
              label: 'Collection'),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("Assets/Icons/Booking.png")),
              label: 'Booking'),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage("Assets/Icons/Favorite.png"),
              ),
              label: 'Favorites'),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("Assets/Icons/Profile.png")),
              label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
