import 'package:blinkist/startPage.dart';
import 'package:blinkist/suchenPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'cardModel.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  static myCard(int count, Kategorie kata) {
    List<Widget> cards = List.generate(
      count,
      (index) => Card(
        elevation: 2.0,
        child: Container(
          width: 140.0,
          height: double.infinity,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Image.asset(
                      CardModel.loadCards(kata)[index].image,
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      left: 0.0,
                      bottom: 0.0,
                      child: Container(
                        padding: EdgeInsets.all(2.0),
                        color: Colors.lime,
                        // width: 140,

                        child: Text(
                          CardModel.loadCards(
                                          kata)[index]
                                      .author
                                      .toString()
                                      .length >=
                                  17
                              ? CardModel.loadCards(kata)[index]
                                      .author
                                      .toString()
                                      .substring(0, 17) +
                                  "..."
                              : CardModel.loadCards(kata)[index].author,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              CardModel.loadCards(kata)[index].title,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 25.0,
                          ),
                          Icon(
                            Icons.lock,
                            color: Colors.greenAccent,
                          )
                        ],
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          CardModel.loadCards(kata)[index].subtitle,
                          style: TextStyle(fontSize: 12.0),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),

          // index.toString(),
        ),
      ),
    );

    return Padding(
      padding: const EdgeInsets.only(top: 7.0, left: 12.0),
      child: SizedBox(
        height: 240.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: cards,
        ),
      ),
    );
  }

  static Widget titleStart(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontSize: 26.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 6.0),
            child: Container(
              color: Colors.red,
              height: 3.0,
              width: 30.0,
            ),
          )
        ],
        // ),
      ),
    );
  }

  static Widget ersteCard() => Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          margin: EdgeInsets.only(top: 10.0),
          elevation: 0.0,
          child: Container(
            height: 265.0,
            width: double.infinity,
            child: Column(
              children: <Widget>[
                Flexible(
                  flex: 5,
                  child: Container(
                    width: double.infinity,
                    child: Image.asset(
                      "assets/second.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Flexible(
                  flex: 4,
                  child: Container(
                    color: Colors.black87,
                    width: double.infinity,
                    padding: EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Allen Carr",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            height: 4.0,
                          ),
                          Text(
                            "Endlich Nichtraucher",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                            ),
                          ),
                          SizedBox(
                            height: 8.0,
                          ),
                          SizedBox(
                            width: 250.0,
                            child: Text(
                              "Der einfache Weg, mit dem Rauchen Schluss  zu machen",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            // Image.asset(name),
          ),
        ),
      );

  static Padding cardUeberschrift(Kategorie kata) {
    TitleCardModel card = TitleCardModel.titleCards(kata);
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 18.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                card.title,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              kata == Kategorie.daily
                  ? SizedBox(
                      height: 27.0,
                    )
                  : SizedBox(
                      height: 27.0,
                      child: MaterialButton(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        child: Text(
                          "Freischalten",
                          style: TextStyle(color: Colors.greenAccent),
                        ),
                        onPressed: () {},
                      ),
                    )
            ],
          ),
          Text(
            card.subtitle,
            style: TextStyle(
              fontSize: 11,
            ),
          ),
        ],
      ),
    );
  }

  MyHomePage({
    Key key,
  }) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  gibPage() {
    switch (_selectedIndex) {
      case 0:
        {
          return StartPage();
        }
        break;
      case 1:
        {
          return SuchenPage();
        }
        break;
      case 2:
        {
          return Center(
            child: Text(
              "Noch zumachen",
            ),
          );
        }
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        actions: <Widget>[
          Icon(
            Icons.settings,
            color: Colors.grey,
          ),
          SizedBox(
            width: 20.0,
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            gibPage(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onItemTapped,
        backgroundColor: Colors.black,
        iconSize: 26.0,
        elevation: 0.0,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.greenAccent,
        currentIndex: _selectedIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('start'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Suchen'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            title: Text('Meine Title'),
          ),
        ],
      ),
    );
  }
}
