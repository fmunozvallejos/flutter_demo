import 'package:flutter/material.dart';


class DGAScreen extends StatelessWidget{
  @override
  Widget build( BuildContext context){
    return Scaffold(
      body: Container(
        color:Colors.white,
        child: Column(
          children:<Widget>[
            Text(
                'Job hunting',
                style: Theme.of(context).textTheme.headline1
            ),
            Text('made easy',
                style: Theme.of(context).textTheme.headline2
            ),
          MaterialButton(
              elevation:10.0,
              minWidth:170.0,
              height: 50,
              color: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0)
              ),
              child: Text(
                'Get Started',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0
                ),
              ),
              onPressed: (){}
          ),
          ]
        ),
      ),
    );
  }
}