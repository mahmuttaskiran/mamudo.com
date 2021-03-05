import 'package:flutter/material.dart';
import 'package:mamudo_com/models/sensitive_string.dart';

class Blog {
  LanguageSensitiveString title;
  LanguageSensitiveString content;
  IconData? icon;
  String? link;

  Blog({
    required this.title,
    required this.content,
    this.icon,
    this.link,
  });
}
