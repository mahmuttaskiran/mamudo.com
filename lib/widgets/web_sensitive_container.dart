import 'package:flutter/material.dart';

class WebSensitiveContainer extends StatelessWidget {
  final Widget? child;
  WebSensitiveContainer({this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width > 500 ? 500 : double.infinity,
    );
  }
}
