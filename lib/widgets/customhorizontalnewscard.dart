import 'package:flutter/material.dart';
import 'package:newsapp/models/customnewscardmodel.dart';
import 'package:newsapp/views/newscard.dart';

class Customhorizontalnewscard extends StatelessWidget {
  const Customhorizontalnewscard({
    super.key,
    required this.modeldata,
  });
  final Customnewscardmodel modeldata;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return Newscard(categorydata: modeldata.categoryname);
          },
        ));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 20),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 150,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
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
        ),
      ),
    );
  }
}
