import 'package:flutter/material.dart';
import 'package:mamudo_com/constants/core_components.dart';

class CoreComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: tCoreComponents.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Chip(
              label: Text(tCoreComponents[index]),
              backgroundColor: index % 2 == 0
                  ? Theme.of(context).colorScheme.secondary
                  : null,
            ),
          );
        },
      ),
    );
  }
}
