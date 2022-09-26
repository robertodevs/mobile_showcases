import 'package:flutter/material.dart';

double baseHeight = 812;
double baseWidth = 375;

double screenAwareHeight(BuildContext context, double size) {
  return size * MediaQuery.of(context).size.height / baseHeight;
}

double screenAwareWidth(BuildContext context, double size) {
  return size * MediaQuery.of(context).size.width / baseWidth;
}
