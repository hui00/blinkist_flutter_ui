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
  MyHomePage({
    Key key,
  }) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ersteCard(),
              kategorienFuerCards(
                  "Empfehlungen für dich", "Diese Titel könnten dir gefallen"),
              SizedBox(
                height: 8.0,
              ),
              SizedBox(
                height: 240.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: myCard(
                    5,
                    Kategorie.empfehlung,
                  ),
                ),
              ),
              kategorienFuerCards(
                  "Beliebt", "Die populärten Titel bei Blinkist"),
              SizedBox(
                height: 8.0,
              ),
              SizedBox(
                height: 240.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: myCard(
                    5,
                    Kategorie.beliebt,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget ersteCard() => Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 24.0,
        ),
        child: Card(
          // shape: BeveledRectangleBorder(
          //     borderRadius: BorderRadius.only(
          //   bottomLeft: Radius.circular(4.0),
          //   bottomRight: Radius.circular(4.0),
          // )),
          // clipBehavior: Clip.hardEdge,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          margin: EdgeInsets.only(top: 10.0),
          elevation: 0.0,
          child: Container(
            height: 330.0,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ListTile(
                  title: Text(
                    "Free Daily",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0,
                    ),
                  ),
                  subtitle: Text(
                    "Dein kostenloser Titel des Tages",
                    style: TextStyle(
                      fontSize: 13.0,
                    ),
                  ),
                ),
                Expanded(
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
                )
                // Image.asset(name),
              ],
            ),
          ),
        ),
      );

  Padding kategorienFuerCards(String title, String subtitle) => Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 24.0,
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
                  title,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 32.0,
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
            Text(subtitle)
          ],
        ),
      );

  myCard(int count, Kategorie kata) {
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
    // List<Widget> huiii = [Text("hi")];
    // Widget hua = ListView();

    print(cards.length);
    return cards;
  }
}
