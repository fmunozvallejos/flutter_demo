
import 'package:flutter/material.dart';
import 'package:demo/screens/header_menu.dart';

class GraphScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _customAppBar(context),
            _titulo_grafico(context),
            SizedBox(height: 50.0),
            _graphImage(),
          ],
        ),
      ),
    );
  }

  Widget _customAppBar(context) {
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


  Widget _titulo_grafico(context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 5.0, bottom: 15.0),
      child: Text('Grafico'),
    );
  }


  Widget _graphImage(){
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: Image.asset('assets/images/grafico.png'),
    );
  }

}
