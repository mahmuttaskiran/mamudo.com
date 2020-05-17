import 'package:mamudo_com/models/sensitive_string.dart';

class Education {
  DateTime start;
  DateTime end;
  LanguageSensitiveString university;
  LanguageSensitiveString department;
  LanguageSensitiveString degree;

  Education({
    this.end,
    this.start,
    this.degree,
    this.department,
    this.university,
  });
}
