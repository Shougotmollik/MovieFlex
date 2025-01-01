import 'package:flutter/material.dart';

class NavigationService {
  late final GlobalKey<NavigatorState> navigatorKey;
  NavigationService() {
    navigatorKey = GlobalKey<NavigatorState>();
  }

  navigator(Widget widget) {
    return navigatorKey.currentState
        ?.push(MaterialPageRoute(builder: (context) => widget));
  }

  navigatorReplacement(Widget widget) {
    return navigatorKey.currentState
        ?.pushReplacement(MaterialPageRoute(builder: (context) => widget));
  }
}
