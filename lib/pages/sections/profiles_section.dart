import 'package:flutter/material.dart';
import 'package:hello_world/constants/texts.dart';
import 'package:hello_world/widgets/responsive_widget.dart';

class ProfilesSection extends StatelessWidget {
  Widget bonus(BuildContext context, String text) {
    if (ResponsiveWidget.isSmallScreen(context)) {
      return Flexible(
        flex: 3,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 3,
                color: Colors.white,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 32.0),
              ),
            ),
          ),
        ),
      );
    } else {
      return Flexible(
        flex: 3,
        child: Padding(
          padding: const EdgeInsets.all(80.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 3,
                color: Colors.white,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 32.0),
              ),
            ),
          ),
        ),
      );
    }
  }

  List<Widget> _content(BuildContext context) => <Widget>[
        bonus(context, Texts.bonus1),
        bonus(context, Texts.bonus2),
      ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black87),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(
            flex: 2,
            child: Center(
                child: Text(
              "En bref...",
              style: Theme.of(context).textTheme.headline2,
            )),
          ),
          Flexible(
            flex: 4,
            child: Center(
              child: ResponsiveWidget(
                largeScreen: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 120.0),
                  child: Row(
                    children: _content(context),
                  ),
                ),
                smallScreen: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: _content(context),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
