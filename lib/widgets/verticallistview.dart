import 'package:flutter/material.dart';
import 'package:newsapp/models/customverticalnewscardmodel.dart';
import 'package:newsapp/widgets/customverticalnewscard.dart';

class Verticallistview extends StatelessWidget {
  Verticallistview({super.key});
  final List<Customverticalnewscardmodel> customverticalcards = [
    Customverticalnewscardmodel(
        image: 'assets/image3.jpg',
        title: 'kdnlknfkdnfklnflk',
        subtitle: 'dkj;fhek;jfhke;jf;e'),
    Customverticalnewscardmodel(
        image: 'assets/image3.jpg',
        title: 'kdnlknfkdnfklnflk',
        subtitle: 'dkj;fhek;jfhke;jf;e'),
    Customverticalnewscardmodel(
        image: 'assets/image3.jpg',
        title: 'kdnlknfkdnfklnflk',
        subtitle: 'dkj;fhek;jfhke;jf;e'),
    Customverticalnewscardmodel(
        image: 'assets/image3.jpg',
        title: 'kdnlknfkdnfklnflk',
        subtitle: 'dkj;fhek;jfhke;jf;e'),
    Customverticalnewscardmodel(
        image: 'assets/image3.jpg',
        title: 'kdnlknfkdnfklnflk',
        subtitle: 'dkj;fhek;jfhke;jf;e'),
    Customverticalnewscardmodel(
        image: 'assets/image3.jpg',
        title: 'kdnlknfkdnfklnflk',
        subtitle: 'dkj;fhek;jfhke;jf;e'),
    Customverticalnewscardmodel(
        image: 'assets/image3.jpg',
        title: 'kdnlknfkdnfklnflk',
        subtitle: 'dkj;fhek;jfhke;jf;e'),
    Customverticalnewscardmodel(
        image: 'assets/image3.jpg',
        title: 'kdnlknfkdnfklnflk',
        subtitle: 'dkj;fhek;jfhke;jf;e'),
    Customverticalnewscardmodel(
        image: 'assets/image3.jpg',
        title: 'kdnlknfkdnfklnflk',
        subtitle: 'dkj;fhek;jfhke;jf;e'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemCount: customverticalcards.length,
        itemBuilder: (context, index) => Customverticalnewscard(
            verticalnewscard: customverticalcards[index]));
  }
}
