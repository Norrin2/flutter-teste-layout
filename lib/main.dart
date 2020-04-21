import 'package:flutter/material.dart';

import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color corBotes = Theme.of(context).primaryColor;
    return MaterialApp(
      title: 'Layout Flutter',
      home: Home(corBotes: corBotes),
    );
  }
}