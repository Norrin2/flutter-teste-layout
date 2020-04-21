import 'package:flutter/material.dart';
import 'package:layout_flutter/detalhes/detalhes.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Primeira Página")),
        body: Container(
          margin: const EdgeInsets.only(top: 8),
          child: Center(
            child: Column(children: <Widget>[
              Image.asset(
                'assets/images/lake.jpg',
                width: 300,
                height: 120,
                fit: BoxFit.cover,
              ),
              RaisedButton(
                  child: Text("Ir para Detalhes"),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Detalhes(
                                  corBotes: Theme.of(context).primaryColor,
                                )));
                  })
            ]),
          ),
        ));
  }
}
