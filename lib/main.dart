import 'package:flutter/material.dart';
import 'package:layout_flutter/secao-botoes.dart';
import 'package:layout_flutter/secao-texto.dart';
import 'package:layout_flutter/secao-titulo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color corBotes = Theme.of(context).primaryColor;
    return MaterialApp(
      title: 'Layout Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Layout Flutter'),
        ),
        body: ListView(
          children: [
            Image.asset(
            'images/lake.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
            ),
            secaoTitulo,
            SecaoBotoes(corBotes),
            secaoTexto
          ]
        ),
      ),
    );
  }
}