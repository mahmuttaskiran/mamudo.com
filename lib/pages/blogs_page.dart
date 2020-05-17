import 'package:flutter/material.dart';
import 'package:mamudo_com/constants/translations.dart';
import 'package:mamudo_com/widgets/blog.dart';
import 'package:mamudo_com/widgets/fixed_card.dart';

class BlogsPage extends StatefulWidget {
  @override
  _BlogsPageState createState() => _BlogsPageState();
}

class _BlogsPageState extends State<BlogsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tBlogsTitle.get(context)),
        centerTitle: true,
      ),
      body: Center(
        child: FixedCard(
          child: SingleChildScrollView(
            child: BlogsWidget(
              showAll: true,
            ),
          ),
        ),
      ),
    );
  }
}
