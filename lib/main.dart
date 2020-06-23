import 'package:flutter/material.dart';
import 'package:headers/src/pages/pinterest_page.dart';

 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Headers App',
      home: PinterestPage()
    );
  }
}