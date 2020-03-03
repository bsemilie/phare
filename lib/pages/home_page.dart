import 'package:flutter/material.dart';
import 'package:hello_world/pages/sections/home_section.dart';
import 'package:hello_world/pages/sections/portfolio_section.dart';
import 'package:hello_world/pages/sections/profiles_section.dart';
import 'package:hello_world/widgets/responsive_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static PageController _pageController;
  static Icon _fobIcon;
  static const int _finalPage = 2;
  static Color _bgColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Scrollbar(
          child: PageView(
            pageSnapping: ResponsiveWidget.isSmallScreen(context),
            physics: BouncingScrollPhysics(),
            controller: _pageController,
            scrollDirection: Axis.vertical,
            children: <Widget>[
              HomeSection(
                controller: _pageController,
              ),
              ProfilesSection(),
              PortfolioSection(),
            ],
          ),
        ),
      ),
      backgroundColor: _bgColor,
      floatingActionButton: FloatingActionButton(
        child: _fobIcon,
        onPressed: () {
          if (_pageController.hasClients) {
            if (_pageController.page < _finalPage) {
              _pageController.nextPage(
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut,
              );
            } else {
              _pageController.animateToPage(
                0,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut,
              );
            }
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    _pageController = PageController();

    // Change FOB icon corresponding to page
    _pageController.addListener(() {
      if (_pageController.hasClients) {
        if (_pageController.page.round() < _finalPage) {
          setState(() {
            _fobIcon = Icon(Icons.arrow_downward);
            _bgColor = Colors.white;
          });
        } else {
          setState(() {
            _fobIcon = Icon(Icons.arrow_upward);
            _bgColor = Colors.blue[900];
          });
        }
      }
    });

    // init State
    _fobIcon = Icon(Icons.arrow_downward);
    _bgColor = Colors.white;
  }
}
