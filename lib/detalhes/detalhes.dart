import 'package:flutter/material.dart';

import 'package:layout_flutter/detalhes/secao-botoes.dart';
import 'package:layout_flutter/detalhes/secao-texto.dart';
import 'package:layout_flutter/detalhes/secao-titulo.dart';

class Detalhes extends StatelessWidget {
  const Detalhes({
    Key key,
    @required this.corBotes,
  }) : super(key: key);

  final Color corBotes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout Flutter'),
      ),
      body: ListView(
          children: [
            Image.asset(
              'assets/images/lake.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            secaoTitulo,
            SecaoBotoes(corBotes),
            secaoTexto
          ]
      ),
    );
  }
}