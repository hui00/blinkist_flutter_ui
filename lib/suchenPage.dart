import 'package:blinkist/cardModelKategorie.dart';
import 'package:blinkist/main.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'cardModel.dart';

class SuchenPage extends StatefulWidget {
  static Widget searchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
      child: Container(
        height: 45.0,
        width: double.infinity,
        color: Colors.grey.withOpacity(0.10),
        child: TextField(
          cursorColor: Colors.black,
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: Colors.black,
              size: 22.0,
            ),
            focusColor: Colors.black,
            border: InputBorder.none,
            hintText: 'Buch, Autor oder Stichwort',
          ),
        ),
      ),
    );
  }

  static Widget titleSuchenPage(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          ButtonTheme(
            child: MaterialButton(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              minWidth: 0.0,
              padding: EdgeInsets.all(0),
              child: Text(
                "Mehr",
                style: TextStyle(color: Colors.greenAccent),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }

  static Widget kategorienCard() {
    return Padding(
      padding: const EdgeInsets.only(top: 7.0, left: 12.0),
      child: SizedBox(
        height: 140.0,
        child: ListView.builder(
          itemCount: CardModelKategorie.allKategorie.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: const Color(0xff066399),
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: <Widget>[
                  Image.asset(
                    CardModelKategorie.allKategorie[index].image,
                    color: Colors.black.withOpacity(0.20),
                    fit: BoxFit.fill,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      CardModelKategorie.allKategorie[index].name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  static Widget leseleistenCard() {
    return Padding(
      padding: const EdgeInsets.only(top: 7.0, left: 12.0),
      child: Card(
        color: Colors.white,
        child: SizedBox(
          height: 260.0,
          width: 180.0,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    ClipPath(
                      clipper: MyClipper(),
                      child: Image.asset(
                        "assets/second.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Icon(Icons.ac_unit),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.amber,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  _SuchenPageState createState() => _SuchenPageState();
}

class _SuchenPageState extends State<SuchenPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // MyHomePage.titleStart("Suchen"),
          // SuchenPage.searchBar(),
          // SuchenPage.titleSuchenPage("Kategorien"),
          // SuchenPage.kategorienCard(),
          // SizedBox(
          //   height: 12.0,
          // ),
          // SuchenPage.titleSuchenPage("Leselisten"),
          SuchenPage.leseleistenCard(),
        ],
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height - 25);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
