import 'package:flutter/material.dart';
import 'package:mamudo_com/models/communication.dart';
import 'package:mamudo_com/models/sensitive_string.dart';

var _professionalLanguage = LanguageSensitiveString.enTr(
    "Professional working proficiency", "Profesyonel çalışma yeteneği");
var _nativeLanguage = LanguageSensitiveString.enTr("Native", "Ana dil");

var tCommunications = [
  Communication(
    Locale("en"),
    LanguageSensitiveString.enTr("English", "İngilizce"),
    _professionalLanguage,
  ),
  Communication(
    Locale("tr"),
    LanguageSensitiveString.enTr("Turkish", "Türkçe"),
    _nativeLanguage,
  ),
];
