import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SecaoBotoes extends StatelessWidget {

  Color _color;

  SecaoBotoes(Color color) {
    this._color = color;
  }

  _launchCaller() async {
    const url = "tel:1234567";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Problema ao ligar para $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(_color, Icons.call, 'CALL', _launchCaller),
          _buildButtonColumn(_color, Icons.near_me, 'ROUTE', null),
          _buildButtonColumn(_color, Icons.share, 'SHARE', null),
        ],
      ),
    );
  }
}


  Column _buildButtonColumn(Color color, IconData icon, String label, VoidCallback funcao) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: FlatButton (
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
            onPressed: funcao,
          )
        ),
      ],
    );
  }