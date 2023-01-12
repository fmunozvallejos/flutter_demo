
import 'package:flutter/material.dart';
import 'package:demo/screens/header_menu.dart';

class PozoScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _customAppBar(context),
            Container(
                color: Colors.orangeAccent,
                child: _listPosos(context)),
            SizedBox(height: 50.0),
            _image(),
            _infoPoso(context),
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

  Widget _image(){
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: Image.asset('assets/images/image.jpeg'),
    );
  }
  Widget _listPosos(context) {
    return Padding(
      padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 5.0, bottom: 15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[

          Row(
            children: <Widget>[
              TextButton(
                onPressed: () {
                  //action
                },
                child: Text(
                  'Po 01', //title
                  textAlign: TextAlign.end, //aligment
                ),
              ),
              TextButton(
                onPressed: () {
                  //action
                },
                child: Text(
                  'Po 02', //title
                  textAlign: TextAlign.end, //aligment
                ),
              ),
              TextButton(
                onPressed: () {
                  //action
                },
                child: Text(
                  'Po 03', //title
                  textAlign: TextAlign.end, //aligment
                ),
              ),
              TextButton(
                onPressed: () {
                  //action
                },
                child: Text(
                  'Po 04', //title
                  textAlign: TextAlign.end, //aligment
                ),
              ),
              TextButton(
                onPressed: () {
                  //action
                },
                child: Text(
                  'Po 05', //title
                  textAlign: TextAlign.end, //aligment
                ),
              ),


            ],
          ),
        ],
      ),
    );
  }
  Widget _infoPoso(context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[

              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Theme.of(context).colorScheme.outline,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                ),
                child: const SizedBox(

                  width: 150,
                  height: 90,
                  child: Center(child: Text('''Caudal (L/S)
                                29.2
                              ''')),

                ),
              ),
              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Theme.of(context).colorScheme.outline,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                ),
                child: const SizedBox(
                  width: 150,
                  height: 90,
                  child: Center(child: Text('''Acumulado (M)
                              1.500.000
                              ''')),
                ),
              ),

            ],
          ),

        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[

              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: Theme.of(context).colorScheme.outline,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(12)),
                ),
                child: const SizedBox(
                  width: 150,
                  height: 90,
                  child: Center(child: Text('''Nivel Freatico(Mtrs)
                                                              49.5
                  ''')),
                ),
              ),


            ],
          ),

        ),

      ],
    );
  }

  /*Widget _tablaPozo(){
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
  }*/

}
