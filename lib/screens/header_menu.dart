import 'package:flutter/material.dart';
import 'package:demo/screens/datos_pozo.dart';
import 'package:demo/screens/graph_pozo.dart';
import 'package:demo/screens/tabla_pozo.dart';


const List<String> list = <String>[ 'Mi Poso','Grafico','Datos'];
String dropdownValue = 'Mi Poso';

class HeaderMenu extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: const Center(
          child: DropdownButtonExample(),
        ),
      ),
    );
  }
}


// To show Selected Item in Text.

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});
  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();

}
class _DropdownButtonExampleState extends State<DropdownButtonExample> {

  @override
  Widget build(BuildContext context) {
    print(dropdownValue);
    return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(Icons.arrow_downward),
      elevation: 16,
      style: const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: (String? value) {
        print("cambio");
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
        changeScreen(value, context);
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );

  }
}

void changeScreen(value,context){
  switch(value) {
    case 'Mi Poso': {
      // statements;
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>  PozoScreen()),
      );
    }
    break;

    case 'Grafico': {
      //statements;
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => GraphScreen()),
      );
    }
    break;
    case 'Datos': {
      //statements;
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) =>  TableScreen()),
      );
    }
    break;

  }

}
