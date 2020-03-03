import 'package:flutter/material.dart';
import 'package:hello_world/constants/text_styles.dart';
import 'package:hello_world/constants/page_titles.dart';

class MainDrawer extends StatelessWidget {
  final PageController _pageController;
  const MainDrawer(this._pageController, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0.0,
      child: ListView(
        padding: EdgeInsets.all(20.0),
        children: <Widget>[
          ListTile(
            title: Text(
              PageTitles.home,
              style: MyTextStyles.drawerText.apply(fontSizeDelta: 8.0),
            ),
            leading: Icon(
              Icons.home,
              color: Colors.white,
              size: 32.0,
            ),
            onTap: () {
              _pageController.animateToPage(
                0,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut,
              );
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(
              PageTitles.profiles,
              style: MyTextStyles.drawerText,
            ),
            leading: Icon(
              Icons.portrait,
              color: Colors.white,
              size: 24.0,
            ),
            onTap: () {
              _pageController.animateToPage(
                1,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut,
              );
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(
              PageTitles.hello_world,
              style: MyTextStyles.drawerText,
            ),
            leading: Icon(
              Icons.folder_special,
              color: Colors.white,
              size: 24.0,
            ),
            onTap: () {
              _pageController.animateToPage(
                2,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut,
              );
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text(
              PageTitles.contacts,
              style: MyTextStyles.drawerText,
            ),
            leading: Icon(
              Icons.mail,
              color: Colors.white,
              size: 24.0,
            ),
            onTap: () {
              _pageController.animateToPage(
                3,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeInOut,
              );
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

class MainAppBar {
  final PageController _pageController;
  const MainAppBar(this._pageController);

  Widget getAppbar() => AppBar(
        elevation: 0.0,
        title: Text(PageTitles.title),
        actions: <Widget>[
          FlatButton(
            child: Text(
              PageTitles.home,
              style: MyTextStyles.drawerText,
            ),
            onPressed: () => _pageController.animateToPage(
              0,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeInOut,
            ),
          ),
          FlatButton(
            child: Text(
              PageTitles.profiles,
              style: MyTextStyles.drawerText,
            ),
            onPressed: () => _pageController.animateToPage(
              1,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeInOut,
            ),
          ),
          FlatButton(
            child: Text(
              PageTitles.hello_world,
              style: MyTextStyles.drawerText,
            ),
            onPressed: () => _pageController.animateToPage(
              2,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeInOut,
            ),
          ),
          FlatButton(
            child: Text(
              PageTitles.contacts,
              style: MyTextStyles.drawerText,
            ),
            onPressed: () => _pageController.animateToPage(
              3,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeInOut,
            ),
          ),
        ],
      );
}
