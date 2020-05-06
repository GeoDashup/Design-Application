import 'package:design_application/src/pages/basico_page.dart';
import 'package:design_application/src/pages/degree_page.dart';
import 'package:design_application/src/pages/grid_page.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Design App',
      initialRoute: "degree",
      routes: {
        "basico": (BuildContext context) => BasicPage(),
        "degree": (BuildContext context) => DegreePage(),
        "grid": (BuildContext context) => GridPage(),
      },
      
    );
  }
}