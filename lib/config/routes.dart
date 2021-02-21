// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import './routehandler.dart';

class Routes {
  static FluroRouter router = FluroRouter();

  static String home = '/';
  static String firstPage = '/first_page';

  static void configureRoutes() {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print('ROUTES WAS NOT FOUND !!!!');
      return;
    });

    router.define(home, handler: rootHandler);
    router.define(firstPage, handler: firstHandler);
  }
}
