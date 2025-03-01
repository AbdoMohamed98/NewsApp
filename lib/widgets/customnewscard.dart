import 'package:flutter/material.dart';
import 'package:newsapp/models/customnewscardmodel.dart';

class Customnewscard extends StatelessWidget {
  const Customnewscard({
    super.key, required this.modeldata,
  });
  final Customnewscardmodel modeldata;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 150,
          width: 200,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(modeldata.image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          modeldata.text,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
