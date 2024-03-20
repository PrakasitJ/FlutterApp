import 'package:flutter/material.dart';
import 'package:basicflutter/views/HomePage/Homepage.dart';
import 'package:basicflutter/models/PageData.dart';
import 'package:flutter/widgets.dart';

class PageList {
  List<PageData> pageList = [];

  PageList() {
    pageList.add(PageData("HomePage", const HomePage()));
  }

  PageData? findPage(String pageName) {
    for (PageData page in pageList) {
      if (page.pageName == pageName) {
        return page;
      }
    }
    return null;
  }

  void routeTo(context, String pageName) {
    var routePage = findPage(pageName);

    if (routePage != null) {
      Navigator.of(context).push(_createRoute(routePage));
    } else {
      print("Page Not Found Error 404!");
    }
  }

  Route _createRoute(PageData routePage) {
    var pageToGo = routePage.page;

    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => pageToGo,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        var offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }
}
