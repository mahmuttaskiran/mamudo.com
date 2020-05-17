import 'package:mamudo_com/models/sensitive_string.dart';

enum ExperienceType {
  selfExperience,
  professionalExperience,
}

class Experience {
  LanguageSensitiveString title;
  LanguageSensitiveString description;
  String assetImage;
  DateTime start;
  DateTime end;
  String playStoreLink;
  String appStoreLink;
  String secondaryLink;
  ExperienceType type;
  LanguageSensitiveString position;
  LanguageSensitiveString location;
  LanguageSensitiveString company;

  bool isOpenSource;

  Experience({
    this.title,
    this.description,
    this.assetImage,
    this.start,
    this.end,
    this.playStoreLink,
    this.secondaryLink,
    this.type,
    this.position,
    this.location,
    this.company,
    this.appStoreLink,
    this.isOpenSource = false,
  });
}
