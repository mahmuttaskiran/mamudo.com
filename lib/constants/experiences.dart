import 'package:mamudo_com/models/experience.dart';
import 'package:mamudo_com/models/sensitive_string.dart';

var tExperiences = [
  Experience(
    title: LanguageSensitiveString.enTr(
      "Argeloji",
      "Argeloji",
    ),
    description: LanguageSensitiveString.enTr(
      "Developing BlueOperation's mobile application for Argeloji. BlueOperation offers RTLS solutions that can actively monitor the location of assets to optimize searching time in a wide range of area facilities such as Airports.",
      "Argeloji'nin bünyesindeki BlueOperation'ın mobil uygulamasını geliştiriyorum. BlueOperation, RTLS çözümleri sunan, havaalanları gibi geniş alan tesislerinde varlıkların arama sürecini optimize eden bir altyapı.",
    ),
    position: LanguageSensitiveString.enTr(
      "Mobile Application Developer",
      "Mobil Uygulama Geliştiricisi",
    ),
    type: ExperienceType.professionalExperience,
    assetImage: "assets/images/blueoperation.webp",
    start: DateTime(2019, 6),
    end: null,
    playStoreLink:
        "https://play.google.com/store/apps/details?id=com.blueoperation_mobile",
    secondaryLink: "https://www.argeloji.com",
    location: LanguageSensitiveString.enTr(
      "Istanbul / Turkey",
      "Istanbul",
    ),
    company: LanguageSensitiveString.enTr("Argeloji", ""),
  ),
  Experience(
    title: LanguageSensitiveString.enTr(
      "Polyingo - Mobile App",
      "Polyingo - Mobil uygulama",
    ),
    description: LanguageSensitiveString.enTr(
      "An application that allows users to learn English by watching videos about words.",
      "Kullanıcılara kelimeler hakkında çekilmiş videoları izleterek İngilizce öğrenmelerini sağlayan bir uygulama.",
    ),
    position: LanguageSensitiveString.enTr(
      "Mobile Application Developer",
      "Mobil Uygulama Geliştiricisi",
    ),
    type: ExperienceType.selfExperience,
    assetImage: "assets/images/polyingo.png",
    start: DateTime(2019, 1),
    end: null,
    playStoreLink: "https://play.google.com/store/apps/details?id=com.polyingo",
    appStoreLink:
        "https://apps.apple.com/us/app/polyingo/id1462656360?app=itunes&ign-mpt=uo%3D4",
    secondaryLink: "https://www.polyingo.com",
  ),
  Experience(
    title: LanguageSensitiveString.enTr(
      "Polyin-Go Backend Service",
      "Polyin-Go Backend Service",
    ),
    description: LanguageSensitiveString.enTr(
      "Backend service for Polyingo mobile application written in Go.",
      "Polyingo için Go programlama dili ile yazılmış bir arka plan servisi.",
    ),
    position: LanguageSensitiveString.enTr(
      "Backend Developer",
      "Backend Developer",
    ),
    type: ExperienceType.selfExperience,
    assetImage: "assets/images/polyingo.png",
    start: DateTime(2019, 1),
    end: null,
    secondaryLink: "https://www.polyingo.com",
  ),
  Experience(
    title: LanguageSensitiveString.enTr(
      "Cekirdek Bilgisayar",
      "Çekirdek Bilgisayar",
    ),
    position: LanguageSensitiveString.enTr(
      "Mobile Applicatin Developer",
      "Mobil Uygulama Geliştiricisi",
    ),
    description: LanguageSensitiveString.enTr(
      "Used Kotlin and Android Framework to develop social networking applications. Worked with React-Native.",
      "Kotlin ve React-Native ile ayrı ayrı projeler geliştirerek yeni ve güncel teknolojileri öğrendiğim ilk iş deneyimim.",
    ),
    location: LanguageSensitiveString.enTr(
      "Istanbul, Turkey",
      "İstanbul",
    ),
    start: DateTime(2017),
    end: DateTime(2018),
    type: ExperienceType.professionalExperience,
    secondaryLink: "http://cekirdekbilgisayar.com.tr/",
  ),
  Experience(
    title: LanguageSensitiveString.enTr(
      "Opcon - Mobile Application",
      "Opcon - Mobil uygulama",
    ),
    description: LanguageSensitiveString.enTr(
      "A mobile application that allows users to send smart rules to each other to manage each other's phones.",
      "Kullanıcıların birbirlerine akıllı kurallar göndererek birbirlerinin telefonlarını yönetmelerini sağlayan bir mobil uygulama.",
    ),
    position: LanguageSensitiveString.enTr(
      "Fullstack Developer",
      "Fullstack Developer",
    ),
    type: ExperienceType.selfExperience,
    start: DateTime(2015, 4),
    end: DateTime(2016, 1),
    secondaryLink: "https://github.com/mahmuttaskiran/Opcon",
    isOpenSource: true,
  ),
  Experience(
    title: LanguageSensitiveString.enTr(
      "Makefake - Javascript Library",
      null,
    ),
    description: LanguageSensitiveString.enTr(
      "Make easier to create data for test, design and other development process needs data to continue fast.",
      "Test ve tasarım ortamları için ihtiyaç duyulabilecek veri şablonlarının kolaylıkla üretilebildiği bir JavaScript kütüphanesi.",
    ),
    position: LanguageSensitiveString.enTr(
      "Developerr",
      null,
    ),
    type: ExperienceType.selfExperience,
    start: DateTime(2015, 4),
    end: DateTime(2016, 1),
    secondaryLink: "https://github.com/mahmuttaskiran/Opcon",
    isOpenSource: true,
  ),
];
