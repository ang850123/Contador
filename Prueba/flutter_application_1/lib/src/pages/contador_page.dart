import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  final _estiloTexto = new TextStyle(fontSize: 22.2);
  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Stateful'),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número de taps: ', style: _estiloTexto),
            Text('$_conteo', style: _estiloTexto),
          ],
        )

            //Text('Hola Mundo'),

            ),
        //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: _crearBotones()

        /*FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          //print('Hola mundo');
          _conteo++;
          setState(() {});
        },
      ),*/
        );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(width: 30.0),
        FloatingActionButton(
            //Cuando se presenta el evento onPressed se invoca el método _reset
            child: Icon(Icons.exposure_zero),
            onPressed: _reset),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _sustraer),
        SizedBox(width: 15.0),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _agregar),
        SizedBox(width: 15.0),
        FloatingActionButton(child: Icon(Icons.alarm), onPressed: null),
      ],
    );
  }

  void _agregar() {
    //Método privado agregar
    setState(() => _conteo++);
  }

  void _sustraer() {
    //Método privado sustraer
    setState(() => _conteo--);
  }

  void _reset() {
    //método privado reset
    setState(() => _conteo = 0);
  }
}
