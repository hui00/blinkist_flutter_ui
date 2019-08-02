import 'package:blinkist/main.dart';
import 'package:flutter/material.dart';

import 'cardModel.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyHomePage.titleStart(),
          MyHomePage.cardUeberschrift(Kategorie.daily),
          MyHomePage.ersteCard(),
          MyHomePage.cardUeberschrift(Kategorie.empfehlung),
          MyHomePage.myCard(
            5,
            Kategorie.empfehlung,
          ),
          MyHomePage.cardUeberschrift(Kategorie.beliebt),
          MyHomePage.myCard(
            5,
            Kategorie.beliebt,
          ),
          MyHomePage.cardUeberschrift(Kategorie.neu),
          MyHomePage.myCard(
            5,
            Kategorie.empfehlung,
          ),
        ],
      ),
    );
  }
}
