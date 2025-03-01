import 'package:flutter/material.dart';
import 'package:newsapp/views/homeview.dart';

void main() {
  runApp(NewsApp());
}


 ///////
class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Homeview() ,
    );
  }
}
