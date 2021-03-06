import 'package:flutter/material.dart';

final aLabelStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

final aHintTextStyle = TextStyle(
  color: Colors.white70,
  fontFamily: 'OpenSans',
);

final aBoxDecorationStyle = BoxDecoration(
  color: Color(0xFF6CA8F1),
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.indigo[700],
      blurRadius: 7.0,
      offset: Offset(0, 3),
    ),
  ],
);