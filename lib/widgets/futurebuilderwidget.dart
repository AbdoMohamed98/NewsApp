import 'package:flutter/material.dart';
import 'package:newsapp/models/getnewsmodel.dart';
import 'package:newsapp/services/getnewsservice.dart';
import 'package:newsapp/widgets/customverticalnewscard.dart';

class Futurebuilderwidget extends StatefulWidget {
  const Futurebuilderwidget({super.key});

  @override
  State<Futurebuilderwidget> createState() => _FuturebuilderwidgetState();
}

class _FuturebuilderwidgetState extends State<Futurebuilderwidget> {
  @override
  void initState() {
    super.initState();
    fetchNews();
  }

  Future<List<Getnewsmodel>> fetchNews() async {
    Getnewsservice service = Getnewsservice();
    Future<List<Getnewsmodel>> getnewslist = service.getNews();
    return getnewslist;
  }

  List<Getnewsmodel> getnewslists = [];
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Getnewsmodel>>(
      future: fetchNews(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(), // Loading indicator
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text('Failed to fetch news: ${snapshot.error}'),
          );
        } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return const Center(
            child: Text('No News Available'),
          );
        }

        List<Getnewsmodel> getnewslist = snapshot.data!;
        return ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: getnewslist.length,
          itemBuilder: (context, index) =>
              Customverticalnewscard(getnewsmodel: getnewslist[index]),
        );
      },
    );
  }
}
