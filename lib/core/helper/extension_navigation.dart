import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

extension Navigation on BuildContext {
  Future<dynamic> pushNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this).pushNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushReplacementNamed(String routeName, {Object? arguments}) {
    return Navigator.of(this)
        .pushReplacementNamed(routeName, arguments: arguments);
  }

  Future<dynamic> pushNamedAndRemoveUntil(String routeName,
      {Object? arguments, required RoutePredicate predicate}) {
    return Navigator.of(this)
        .pushNamedAndRemoveUntil(routeName, arguments: arguments, predicate);
  }

  void pop() => Navigator.of(this).pop();
}

class GetRoute {
  static push({required String routeName}) {
    Get.toNamed(routeName);
  }

  static pushAndReplacment({required String routeName}) {
    Get.offNamed(routeName);
  }

  static pushAndRemoveUntil({required String routeName}) {
    Get.offAllNamed(routeName);
  }
}
