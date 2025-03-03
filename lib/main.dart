import 'package:flutter/material.dart';
import 'package:newsapp/services/getnewsservice.dart';
import 'package:newsapp/views/homeview.dart';

void main() {
  runApp(NewsApp());
    Getnewsservice().getNews();
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Homeview() ,
    );
  }
}
