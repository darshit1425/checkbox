import 'package:flutter/material.dart';

import 'Page1.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => HomePage(),
      },
    ),
  );
}
