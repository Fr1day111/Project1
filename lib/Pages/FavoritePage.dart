import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC0C0C0),
      body: SafeArea(
        child: Text('Favorite Page',),
      ),
    );
  }
}
