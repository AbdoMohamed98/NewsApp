import 'package:flutter/material.dart';
import 'package:newsapp/models/getnewsmodel.dart';

class Customverticalnewscard extends StatelessWidget {
  const Customverticalnewscard({super.key, required this.getnewsmodel});
  final Getnewsmodel getnewsmodel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50, top: 15),
      child: Align(alignment: Alignment.center,
        child: Container(
          height: 200,
          width: 400,
          color: Colors.amber,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 100,
                width: 400,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(getnewsmodel.image),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Text(
                getnewsmodel.title,
                maxLines: 1,
              ),
              Text(
                getnewsmodel.description,
                maxLines: 3,
              )
            ],
          ),
        ),
      ),
    );
  }
}
