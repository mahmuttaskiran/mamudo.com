import 'package:flutter/cupertino.dart';
import 'package:mamudo_com/models/sensitive_string.dart';

class Communication {
  Locale locale;
  LanguageSensitiveString languageName;
  LanguageSensitiveString knowledge;
  Communication(this.locale, this.languageName, this.knowledge);
}
