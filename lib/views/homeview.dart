import 'package:flutter/material.dart';
import 'package:newsapp/widgets/customappbar.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:Customappbar() ,
    );
  }
}