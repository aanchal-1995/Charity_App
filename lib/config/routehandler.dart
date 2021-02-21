import 'package:charity_app/CharityApp.dart';
import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:charity_app/home_component.dart';

var rootHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return CharityApp();
});
var firstHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return HomeComponent();
});
