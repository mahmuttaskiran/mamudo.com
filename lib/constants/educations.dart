import 'package:mamudo_com/models/education.dart';
import 'package:mamudo_com/models/sensitive_string.dart';

var tEducations = [
  Education(
    start: DateTime(2012),
    end: DateTime(2016),
    degree: LanguageSensitiveString.en_tr(
      "Bachelor degree",
      "Lisans derecesi",
    ),
    department: LanguageSensitiveString.en_tr(
      "Radio, Television, and Cinema",
      "Radyo, Televizyon ve Sinema",
    ),
    university: LanguageSensitiveString.en_tr(
      "Ege University",
      "Ege Üniversitesi",
    ),
  ),
  Education(
    start: DateTime(2017),
    end: DateTime(2019),
    degree: LanguageSensitiveString.en_tr(
      "Associate",
      "Önlisans",
    ),
    department: LanguageSensitiveString.en_tr(
      "Web Design and Programming",
      "Web Tasarım ve Kodlama",
    ),
    university: LanguageSensitiveString.en_tr(
      "Anadolu University",
      "Anadolu Üniversitesi",
    ),
  ),
];
