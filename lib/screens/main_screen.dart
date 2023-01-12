
import 'package:flutter/material.dart';
import 'package:demo/screens/header_menu.dart';

class MainScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _customAppBar(),
          ],
        ),
      ),
    );
  }

  Widget _customAppBar() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          DropdownButtonExample(),
          Row(
            children: <Widget>[
              IconButton(
                iconSize: 40.0,
                icon: const Icon(Icons.search),
                onPressed: () {},
              ),
              IconButton(
                iconSize: 40.0,
                icon: const Icon(Icons.settings),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

}
