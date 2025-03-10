import 'package:flutter/material.dart';
import 'package:newsapp/widgets/customappbar.dart';
import 'package:newsapp/widgets/futurebuilderwidget.dart';

class Newscard extends StatelessWidget {
  const Newscard({super.key, required this.categorydata});

  final String categorydata;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: new,
          )
          SliverToBoxAdapter(
            child: Customappbar(),
          ),
          SliverToBoxAdapter(
            child: Futurebuilderwidget(
                category: categorydata), // ✅ Pass category correctly
          ),
        ],
      ),
    );
  }
}
