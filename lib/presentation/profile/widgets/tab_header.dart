import 'package:flutter/material.dart';

class TabHeader extends SliverPersistentHeaderDelegate {
  final TabController controller;

  TabHeader(this.controller);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Material(
      child: TabBar(
        controller: controller,
        tabs: const [
          Tab(text: 'Overview'),
          Tab(text: 'Specifications'),
          Tab(text: 'More'),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 46;

  @override
  double get minExtent => 46;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
