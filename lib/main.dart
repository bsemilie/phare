import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

const String lorem = """
Trifund est une plateforme de financement participative qui permet à des entreprises et des citoyens d'investir dans des projets sociaux et solidaires à l'échelle régionale""";

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                "assets/fond-blanc-elegant-lignes-brillantes_1017-17580.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: <Widget>[
            Container(
              height: 1000.0,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Stack(
                      fit: StackFit.passthrough,
                      alignment: Alignment.center,
                      children: <Widget>[
                        Image.network(
                          "https://image.freepik.com/photos-gratuite/colonnes-pieces-herbe_155003-1179.jpg",
                          fit: BoxFit.fitWidth,
                        ), // TODO : Add Image
                        Center(
                          child: Text(
                            "Trifund",
                            style: Theme.of(context)
                                .textTheme
                                .headline1
                                .apply(color: Colors.white70),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 100,
                vertical: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    child: Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Card(
                                    color: Colors.black54,
                                    child: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Text(lorem,
                                          style: TextStyle(fontSize: 24)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: Card(
                                    color: Colors.black54,
                                    child: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Column(
                                        children: <Widget>[
                                          Text("En bref",
                                              style: TextStyle(fontSize: 24)),
                                          Row(
                                            children: <Widget>[
                                              Icon(Icons.add),
                                              Expanded(
                                                  child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8.0),
                                                child: Text(
                                                    "Accompagnement du financement participatif des structures d'organisation ESS",
                                                    style: TextStyle(
                                                        fontSize: 24)),
                                              ))
                                            ],
                                          ),
                                          Row(
                                            children: <Widget>[
                                              Icon(Icons.add),
                                              Expanded(
                                                child: Text(
                                                    "Animation des territoires (coordination)",
                                                    style: TextStyle(
                                                        fontSize: 24)),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(50.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Card(
                            color: Colors.black54,
                            child: Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Nom, prénom",
                                        prefixIcon: Icon(Icons.people),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "E-mail",
                                        prefixIcon: Icon(Icons.email),
                                      ),
                                      obscureText: true,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Entreprise",
                                        prefixIcon: Icon(Icons.work),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Région",
                                        prefixIcon: Icon(Icons.my_location),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        hintText: "Téléphone",
                                        prefixIcon: Icon(Icons.phone),
                                      ),
                                    ),
                                  ),
                                  ButtonBar(
                                    children: <Widget>[
                                      RaisedButton(
                                        onPressed: () {},
                                        child: Text("S'inscrire"),
                                      ), // TODO Nav push
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
