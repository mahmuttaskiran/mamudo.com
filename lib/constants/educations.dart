import 'package:mamudo_com/models/education.dart';
import 'package:mamudo_com/models/sensitive_string.dart';

var tEducations = [
  Education(
    start: DateTime(2012),
    end: DateTime(2016),
    degree: LanguageSensitiveString.enTr(
      "Bachelor degree",
      "Lisans derecesi",
    ),
    department: LanguageSensitiveString.enTr(
      "Radio, Television, and Cinema",
      "Radyo, Televizyon ve Sinema",
    ),
    university: LanguageSensitiveString.enTr(
      "Ege University",
      "Ege Üniversitesi",
    ),
  ),
  Education(
    start: DateTime(2017),
    end: DateTime(2019),
    degree: LanguageSensitiveString.enTr(
      "Associate",
      "Önlisans",
    ),
    department: LanguageSensitiveString.enTr(
      "Web Design and Programming",
      "Web Tasarım ve Kodlama",
    ),
    university: LanguageSensitiveString.enTr(
      "Anadolu University",
      "Anadolu Üniversitesi",
    ),
  ),
  Education(
    start: DateTime(2020),
    degree: LanguageSensitiveString.enTr(
      "Bachelor degree",
      "Lisans derecesi",
    ),
    department: LanguageSensitiveString.enTr(
      "Management Information System",
      "Yönetim Bilişim Sistemleri",
    ),
    university: LanguageSensitiveString.enTr(
      "Anadolu University",
      "Anadolu Üniversitesi",
    ),
  ),
];
