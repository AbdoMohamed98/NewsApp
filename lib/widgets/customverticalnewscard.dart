import 'package:flutter/material.dart';
import 'package:newsapp/models/customverticalnewscardmodel.dart';

class Customverticalnewscard extends StatelessWidget {
  const Customverticalnewscard({super.key, required this.verticalnewscard});
  final Customverticalnewscardmodel verticalnewscard;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50,top: 15,left: 10,right: 10),
      child: Container(
        height: 200,
        width: 200,
        color: Colors.amber,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(verticalnewscard.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Text(
              verticalnewscard.title,
              maxLines: 1,
            ),
            Text(
              verticalnewscard.subtitle,
              maxLines: 3,
            )
          ],
        ),
      ),
    );
  }
}
