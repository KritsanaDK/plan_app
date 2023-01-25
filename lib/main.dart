import 'package:flutter/material.dart';
import 'package:material_color_generator/material_color_generator.dart';

import 'constants.dart';
import 'screens/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      theme: ThemeData(
          primaryColor: kPrimaryColor,
          primarySwatch: generateMaterialColor(color: kPrimaryColor),
          textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: Home_View(),
    );
  }
}
