import 'package:flutter/material.dart';
import 'package:newsapp/models/customnewscardmodel.dart';
import 'package:newsapp/widgets/customappbar.dart';
import 'package:newsapp/widgets/customnewscard.dart';

class Homeview extends StatelessWidget {
   Homeview({super.key});
final List<Customnewscardmodel> customcards = [
    Customnewscardmodel( image: 'assets/image1.jpg', text: 'business'),
    Customnewscardmodel( image: 'assets/image2.jpg', text: 'economy'),
    Customnewscardmodel( image: 'assets/image3.jpg', text: 'science'),
     Customnewscardmodel( image: 'assets/image1.jpg', text: 'sports'),
    Customnewscardmodel( image: 'assets/image2.jpg', text: 'arts'),
    Customnewscardmodel( image: 'assets/image3.jpg', text: 'weather'),
     Customnewscardmodel( image: 'assets/image1.jpg', text: 'beauty'),
    Customnewscardmodel( image: 'assets/image2.jpg', text: 'woman'),
    Customnewscardmodel( image: 'assets/image3.jpg', text: 'business'),

];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Customappbar(),
          const SizedBox(
            height: 100,
          ),
        Expanded(
          child: ListView.builder(
             scrollDirection: Axis.horizontal,
            itemCount:customcards.length,
            itemBuilder: (context, index) => Customnewscard(modeldata: customcards[index]),
             ),
        )
          
        ],
      ),
    );
  }
}
