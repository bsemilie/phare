import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:hello_world/widgets/responsive_widget.dart';

class PortfolioSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black87),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(
            flex: 4,
            child: Center(
              child: ResponsiveWidget(
                largeScreen: SizedBox(
                  height: MediaQuery.of(context).size.height * .7,
                  child: Column(
                    children: _content(context),
                  ),
                ),
                smallScreen: Column(
                  children: _content(context),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _content(BuildContext context) {
    return <Widget>[
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
                alignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {
                      html.window.open(
                        "https://www.figma.com/proto/B57tLmJ35Sdq5NgbGOBzMK/Untitled",
                        "Figma",
                      );
                    },
                    child: Text("S'inscrire"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ];
  }
}
