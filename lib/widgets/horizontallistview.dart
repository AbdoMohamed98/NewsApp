import 'package:flutter/material.dart';
import 'package:newsapp/models/customnewscardmodel.dart';
import 'package:newsapp/widgets/customhorizontalnewscard.dart';

class Horizontallistview extends StatelessWidget {
   Horizontallistview({super.key});
final List<Customnewscardmodel> customcards = [
    Customnewscardmodel( image: 'assets/image1.jpg', text: 'business',categoryname: 'business'),
     Customnewscardmodel( image: 'assets/image2.jpg', text: 'crime',categoryname: 'crime'),
    Customnewscardmodel( image: 'assets/image3.jpg', text: 'domestic',categoryname: 'domestic'),
     Customnewscardmodel( image: 'assets/image1.jpg', text: 'education',categoryname: 'education'),
    Customnewscardmodel( image: 'assets/image2.jpg', text: 'entertainment',categoryname: 'entertainment'),
    Customnewscardmodel( image: 'assets/image3.jpg', text: 'environment',categoryname: 'environment'),
     Customnewscardmodel( image: 'assets/image1.jpg', text: 'food',categoryname: 'food'),
    Customnewscardmodel( image: 'assets/image2.jpg', text: 'health',categoryname: 'health'),
    Customnewscardmodel( image: 'assets/image3.jpg', text: 'politics',categoryname: 'politics'),
     Customnewscardmodel( image: 'assets/image3.jpg', text: 'science',categoryname: 'science'),
      Customnewscardmodel( image: 'assets/image3.jpg', text: 'sports',categoryname: 'sports'),
       Customnewscardmodel( image: 'assets/image3.jpg', text: 'technology',categoryname: 'technology'),
        Customnewscardmodel( image: 'assets/image3.jpg', text: 'tourism',categoryname: 'tourism'),
         Customnewscardmodel( image: 'assets/image3.jpg', text: 'world',categoryname: 'world'),

];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150, // Set fixed height
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: customcards.length,
        itemBuilder: (context, index) =>
            Customhorizontalnewscard(modeldata: customcards[index]),
      ),
    );
  }
}