import 'package:flutter/material.dart';

extension Size on BuildContext {
  gitwidh(int a) {
    return MediaQuery.of(this).size.width - a;
  }

  githeight(int a) {
    MediaQuery.of(this).size.height - 6;
  }

  gitmerging(double m) {
    return EdgeInsets.only(left: m);
  }

  gitloop() {
    return;
  }

  
}