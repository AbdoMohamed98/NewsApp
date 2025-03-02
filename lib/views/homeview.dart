import 'package:flutter/material.dart';
import 'package:newsapp/widgets/customappbar.dart';
import 'package:newsapp/widgets/horizontallistview.dart';
import 'package:newsapp/widgets/verticallistview.dart';

class Homeview extends StatelessWidget {
  const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                const Customappbar(),
                const SizedBox(height: 100),
                Horizontallistview(),
                const SizedBox(height: 20),
                Verticallistview(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
