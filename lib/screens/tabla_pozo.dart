
import 'package:flutter/material.dart';
import 'package:demo/screens/header_menu.dart';

class TableScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _customAppBar(),
            _titulo_tabla(context),
            _tablaPozo(),
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

  Widget _titulo_tabla(context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 5.0, bottom: 15.0),
      child: Text('Hola'),
    );
  }

  Widget _tablaPozo(){
    return
      Container(
        margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child:Table(

          columnWidths: const <int, TableColumnWidth>{
            0: IntrinsicColumnWidth(),
            1: IntrinsicColumnWidth(),
            2: FlexColumnWidth(),
            3: FlexColumnWidth(),
          },
          border: TableBorder.all(),
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children:[TableRow( children: [
            Column(children:[Text('Mes', style: TextStyle(fontSize: 20.0))]),
            Column(children:[Text('Acumulado', style: TextStyle(fontSize: 20.0))]),
            Column(children:[Text('Caudal', style: TextStyle(fontSize: 20.0))]),
            Column(children:[Text('Nivel', style: TextStyle(fontSize: 20.0))]),
          ]),
            TableRow( children: [
              Column(children:[Text('Enero')]),
              Column(children:[Text('1.500.000')]),
              Column(children:[Text('29.5')]),
              Column(children:[Text('49.5')]),
            ]),
            TableRow( children: [
              Column(children:[Text('Febrero')]),
              Column(children:[Text('1.500.000')]),
              Column(children:[Text('29.5')]),
              Column(children:[Text('49.5')]),
            ]),
            TableRow( children: [
              Column(children:[Text('Marzo')]),
              Column(children:[Text('1.500.000')]),
              Column(children:[Text('29.5')]),
              Column(children:[Text('49.5')]),
            ]),
            TableRow( children: [
              Column(children:[Text('Abril')]),
              Column(children:[Text('1.500.000')]),
              Column(children:[Text('29.5')]),
              Column(children:[Text('49.5')]),
            ]),
            TableRow( children: [
              Column(children:[Text('Mayo')]),
              Column(children:[Text('1.500.000')]),
              Column(children:[Text('29.5')]),
              Column(children:[Text('49.5')]),
            ]),
            TableRow( children: [
              Column(children:[Text('Junio')]),
              Column(children:[Text('1.500.000')]),
              Column(children:[Text('29.5')]),
              Column(children:[Text('49.5')]),
            ]),
            TableRow( children: [
              Column(children:[Text('Julio')]),
              Column(children:[Text('1.500.000')]),
              Column(children:[Text('29.5')]),
              Column(children:[Text('49.5')]),
            ]),
            TableRow( children: [
              Column(children:[Text('Agosto')]),
              Column(children:[Text('1.500.000')]),
              Column(children:[Text('29.5')]),
              Column(children:[Text('49.5')]),
            ]),
            TableRow( children: [
              Column(children:[Text('Septiembre')]),
              Column(children:[Text('1.500.000')]),
              Column(children:[Text('29.5')]),
              Column(children:[Text('49.5')]),
            ]),
            TableRow( children: [
              Column(children:[Text('Octubre')]),
              Column(children:[Text('1.500.000')]),
              Column(children:[Text('29.5')]),
              Column(children:[Text('49.5')]),
            ]),
            TableRow( children: [
              Column(children:[Text('Noviembre')]),
              Column(children:[Text('1.500.000')]),
              Column(children:[Text('29.5')]),
              Column(children:[Text('49.5')]),
            ]),
            TableRow( children: [
              Column(children:[Text('Diciembre')]),
              Column(children:[Text('1.500.000')]),
              Column(children:[Text('29.5')]),
              Column(children:[Text('49.5')]),
            ]),
          ],
        ),
      );
  }

}
