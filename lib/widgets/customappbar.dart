import 'package:flutter/material.dart';

class Customappbar extends StatelessWidget {
  const Customappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      Text('News',style: TextStyle(
        color: Colors.black,fontWeight: FontWeight.bold
      ),),
      Text(' Cloud',style: TextStyle(
        color: Colors.amber,fontWeight: FontWeight.bold
      ),)
    ],);
  }
}