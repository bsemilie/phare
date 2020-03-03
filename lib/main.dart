import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

const String lorem = """
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis semper gravida velit, a blandit odio tristique at. Vivamus nec nisi in odio dictum ornare. In nec urna vel quam semper elementum vel eu nisl. Quisque laoreet sagittis neque at ornare. Proin fringilla nulla at nisi iaculis ullamcorper. Nullam mollis porttitor accumsan. Pellentesque tincidunt arcu feugiat massa elementum ullamcorper. In sit amet tortor consectetur, tempor orci non, rhoncus tortor. Duis volutpat mi id dolor accumsan scelerisque non sit amet odio. Vestibulum ornare libero id erat vehicula, et pharetra dolor laoreet. Integer at viverra justo. Nulla nec quam convallis, dapibus mi sit amet, fermentum odio. Cras nec metus mattis, dapibus velit sed, consequat nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus. Quisque tempor erat id nibh bibendum semper. Mauris bibendum, leo sagittis finibus posuere, risus mi bibendum diam, eget sodales leo magna vitae nibh.

Sed commodo iaculis lorem id ultrices. Etiam vel sapien vitae nulla maximus lacinia. Ut euismod, risus quis consectetur ultrices, est ipsum luctus orci, sed ultricies nisl mauris quis ipsum. Vivamus placerat elit sem, ut dictum lacus imperdiet in. Etiam egestas leo a scelerisque rutrum. Aliquam congue mauris quis risus sollicitudin, id consectetur mauris maximus. In mattis volutpat diam vitae tempus. Aenean vitae mollis nisl, rutrum tincidunt nulla.

Curabitur condimentum neque nulla, nec pharetra tortor imperdiet iaculis. Cras a velit iaculis nisi vestibulum ultricies et nec dui. Cras bibendum urna feugiat odio rutrum volutpat. Vestibulum placerat non est ac accumsan. Sed rutrum velit ex. Etiam tincidunt elementum rhoncus. Curabitur laoreet ultricies dui, placerat suscipit ante auctor dictum. Fusce eu aliquet ex. Fusce eget ipsum finibus, commodo ex et, vestibulum dolor. Aliquam ultricies congue lacus, euismod viverra purus vestibulum at. Curabitur ut commodo leo.

Cras eget interdum metus, et tristique urna. Nullam malesuada dui libero, id euismod enim feugiat imperdiet. Sed scelerisque hendrerit sem, quis mattis urna. Vestibulum pellentesque dignissim dui, id suscipit quam sollicitudin at. Mauris mauris tellus, suscipit sit amet quam vel, mattis rhoncus ante. Mauris a mi sollicitudin, facilisis orci a, mattis quam. Integer ac justo massa.

Proin molestie, urna non mattis venenatis, justo lorem viverra lectus, blandit mattis justo est scelerisque elit. Sed scelerisque lobortis odio non bibendum. Cras dapibus ultricies nunc ultricies tristique. Aliquam vitae luctus odio. Pellentesque et feugiat erat, at viverra sapien. Nunc a purus at nisl elementum volutpat sed vitae libero. Mauris et dolor id velit blandit luctus.""";

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
      body: ListView(
        children: <Widget>[
          Container(
            height: 200.0,
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
                        "https://www.numerama.com/content/uploads/2019/05/trou-noir-astronomie-univers-espace.jpg",
                        fit: BoxFit.fitWidth,
                      ), // TODO : Add Image
                      Center(
                        child: Text(
                          "Placeholder",
                          style: Theme.of(context).textTheme.headline1,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/bg.jpg"),
                fit: BoxFit.cover,
              ),
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
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(lorem),
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
                                    padding: const EdgeInsets.all(10.0),
                                    child: Column(
                                      children: <Widget>[
                                        Text("Text"),
                                        Row(
                                          children: <Widget>[
                                            Icon(Icons.add),
                                            Expanded(
                                              child: Text("Func 1"),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Icon(Icons.add),
                                            Expanded(
                                              child: Text("Func 2"),
                                            )
                                          ],
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Icon(Icons.add),
                                            Expanded(
                                              child: Text("Func 3"),
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
                    padding: const EdgeInsets.all(20.0),
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
                                TextFormField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: "Nom d'utilisateur",
                                    prefixIcon: Icon(Icons.people),
                                  ),
                                ),
                                TextFormField(
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    hintText: "Mot de passe",
                                    prefixIcon: Icon(Icons.vpn_key),
                                  ),
                                  obscureText: true,
                                ),
                                ButtonBar(
                                  children: <Widget>[
                                    OutlineButton(
                                      onPressed: () {},
                                      child: Text("Se connecter"),
                                    ), // TODO Nav push
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
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
