import 'package:flutter/material.dart';

class FixedCard extends StatelessWidget {
  final Widget child;
  final double fixedWidth;

  FixedCard({this.child, this.fixedWidth = 500});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Container(
        width: width > fixedWidth ? fixedWidth : double.infinity,
        child: child,
      ),
    );
  }
}

class FixedContainer extends StatelessWidget {
  final Widget child;
  final double fixedWidth;

  FixedContainer({this.child, this.fixedWidth = 500});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Container(
        width: width > fixedWidth ? fixedWidth : double.infinity,
        child: child,
      ),
    );
  }
}
