import 'package:flutter/material.dart';

class Newscardsappbar extends StatelessWidget {
  const Newscardsappbar({super.key,});
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [Text('business',style: TextStyle(
        color: Colors.black,fontWeight: FontWeight.bold
      ),)],
    );
  }
}
