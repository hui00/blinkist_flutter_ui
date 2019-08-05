import 'package:blinkist/cardModelKategorie.dart';
import 'package:blinkist/leselistenModel.dart';
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
      child: SizedBox(
        height: 300.0,
        child: ListView.builder(
          itemCount: LeseListenModel.allModel.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: Colors.white,
              child: Container(
                width: 170.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    leseleistenImage(index),
                    leseleistenText(index),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  static Widget leseleistenImage(int index) {
    return Container(
      height: 170.0,
      width: 180.0,
      child: Stack(
        children: <Widget>[
          Container(
            height: 166.0,
            width: 180.0,
            child: ClipPath(
              clipper: MyClipper(),
              child: Image.asset(
                LeseListenModel.allModel[index].image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
              ),
              height: 40.0,
              width: 80.0,
              child: Image.asset(
                "assets/iconLeselisten.png",
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
          ),
        ],
      ),
    );
  }

  static Widget leseleistenText(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 0.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 100,
            // color: Colors.blue,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(2.0, 4.0, 2.0, 2.0),
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: LeseListenModel.allModel[index].title + "\n",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: " \n",
                          style: TextStyle(fontSize: 3),
                        ),
                        TextSpan(
                          text: LeseListenModel.allModel[index].subtitle,
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 5,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Text(
              LeseListenModel.allModel[index].amountTitle.toString() +
                  " Titles",
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
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
          MyHomePage.titleStart("Suchen"),
          SuchenPage.searchBar(),
          SuchenPage.titleSuchenPage("Kategorien"),
          SuchenPage.kategorienCard(),
          SizedBox(
            height: 12.0,
          ),
          SuchenPage.titleSuchenPage("Leselisten"),
          SuchenPage.leseleistenCard(),
          SizedBox(
            height: 22.0,
          ),
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
