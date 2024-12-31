import 'package:flutter/material.dart';

import 'sample_item.dart';

/// Displays a list of SampleItems.
class SampleItemListView extends StatefulWidget {
  const SampleItemListView({
    super.key,
    this.items = const [SampleItem(1), SampleItem(2), SampleItem(3)],
  });

  static const routeName = '/';
  final List<SampleItem> items;

  @override
  State<SampleItemListView> createState() => _SampleItemListViewState();
}

class _SampleItemListViewState extends State<SampleItemListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.vertical,
          
          shrinkWrap: true,
          itemBuilder: (ctx, a) {
            return Container(
              height: 80,
              width: 200,
              margin: EdgeInsets.all(8),
              color: Colors.red,
            );
          },
        ),
      ),
    );
  }
}
