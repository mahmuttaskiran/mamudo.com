import 'package:flutter/material.dart';
import 'package:mamudo_com/models/communication.dart';
import 'package:mamudo_com/models/sensitive_string.dart';

var _professionalLanguage = LanguageSensitiveString.en_tr(
    "Professional", "Profesyonel çalışma yeteneği");
var _nativeLanguage = LanguageSensitiveString.en_tr("Native", "Ana dil");

var tCommunications = [
  Communication(
    Locale("en"),
    LanguageSensitiveString.en_tr("English", "İngilizce"),
    _professionalLanguage,
  ),
  Communication(
    Locale("tr"),
    LanguageSensitiveString.en_tr("Turkish", "Türkçe"),
    _nativeLanguage,
  ),
  Communication(
    Locale("ku"),
    LanguageSensitiveString.en_tr("Kurdish", "Kürtçe"),
    _nativeLanguage,
  ),
];
