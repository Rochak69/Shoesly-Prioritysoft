import 'package:flutter/material.dart';

final boxDecorationTopShadow = BoxDecoration(
  color: Colors.white,
  boxShadow: [
    BoxShadow(
      color: Colors.grey.withOpacity(0.15), // shadow color
      spreadRadius: 2,
      blurRadius: 4,
      offset: const Offset(0, -4), // changes position of shadow (x, y)
    ),
  ],
);
