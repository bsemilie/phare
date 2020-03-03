import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hello_world/constants/texts.dart';

class HomeSection extends StatelessWidget {
  final PageController controller;

  const HomeSection({Key key, @required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/bg0.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      // color: Colors.white,
      child: AnimatedPadding(
        duration: Duration(milliseconds: 100),
        padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.1),
        child: Center(
          child: ProfileInfo(
            controller: controller,
          ),
        ),
      ),
    );
  }
}

class ProfileInfo extends StatefulWidget {
  final PageController controller;

  const ProfileInfo({Key key, this.controller}) : super(key: key);

  @override
  _ProfileInfoState createState() => _ProfileInfoState();
}

class _ProfileInfoState extends State<ProfileInfo>
    with TickerProviderStateMixin {
  static Timer _timer;
  static int _textNumber = 0;

  Widget animatedProfileData(textNumber) => FittedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "TRI-FUNDING",
              style: Theme.of(context).textTheme.headline1.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Text(
              Texts.lorem,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline4.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: RaisedButton(
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "S'inscrire !",
                    style: Theme.of(context)
                        .textTheme
                        .button
                        .copyWith(fontSize: 32),
                  ),
                ),
                onPressed: () => widget.controller.animateToPage(
                  2,
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInOut,
                ),
              ),
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        animatedProfileData(_textNumber),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  void initState() {
    super.initState();
  }
}
