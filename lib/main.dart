import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 14.0,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                ersteCard(),
                ersterText(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Card ersteCard() => Card(
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
                          'assets/second.jpg',
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
      );

  Column ersterText() => Column(
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
                "Empfehlungen für dich",
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
                    style: TextStyle(color: Colors.green),
                  ),
                  onPressed: () {},
                ),
              )
            ],
          ),
          Text("Diese Titel könnten dir gefallen")
        ],
      );

  Card listCard() => Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        margin: EdgeInsets.only(top: 10.0),
        elevation: 12.0,
        child: Container(
          height: 230.0,
          width: 140.0,
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
                          'assets/second.jpg',
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
      );
}
