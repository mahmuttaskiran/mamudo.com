import 'package:mamudo_com/widgets/experiences.dart';

var experiences = [
  Experience(
    title: "BlueOperation - Mobile App",
    description:
        "BlueOperation RTLS solution can actively monitor the location of assets to optimize searching time in wide range area facilities such as Airports.",
    position: "Mobile Application Developer, Project Leader",
    type: ExperienceType.ProfessionalExperience,
    assetImage: "assets/images/blueoperation.webp",
    start: DateTime(2019, 6),
    end: null,
    playStoreLink:
        "https://play.google.com/store/apps/details?id=com.blueoperation_mobile",
    secondaryLink: "https://blueoperation.io",
    location: "Istanbul / Turkey",
    company: "Argeloji",
  ),
  Experience(
    title: "Polyingo - Mobile App",
    description: "Language learning application written in Flutter.",
    position: "Mobile Application Developer",
    type: ExperienceType.SelfExperience,
    assetImage: "assets/images/polyingo.png",
    start: DateTime(2019, 1),
    end: null,
    playStoreLink: "https://play.google.com/store/apps/details?id=com.polyingo",
    appStoreLink:
        "https://apps.apple.com/us/app/polyingo/id1462656360?app=itunes&ign-mpt=uo%3D4",
    secondaryLink: "https://www.polyingo.com",
  ),
  Experience(
    title: "Polyin-Go Backend Service",
    description:
        "Backend service for Polyingo mobile application written in Go.",
    position: "Backend Developer",
    type: ExperienceType.SelfExperience,
    assetImage: "assets/images/polyingo.png",
    start: DateTime(2019, 1),
    end: null,
    secondaryLink: "https://www.polyingo.com",
  ),
  Experience(
    title: "Çekirdek Bilgisayar",
    position: "Mobile Applicatin Developer",
    description:
        "Used Kotlin and Android Framework to develop social networking applications. Worked with React-Native to re-write some applications written in PhoneGAP.",
    location: "Istanbul, Turkey",
    start: DateTime(2017),
    end: DateTime(2018),
    type: ExperienceType.ProfessionalExperience,
    secondaryLink: "http://cekirdekbilgisayar.com.tr/",
  ),
  Experience(
    title: "Opcon - Mobile Application",
    description:
        "Open source Android application written in Java. It is my first application that I developed for Android individually.",
    position: "Fullstack Developer",
    type: ExperienceType.SelfExperience,
    start: DateTime(2015, 4),
    end: DateTime(2016, 1),
    secondaryLink: "https://github.com/mahmuttaskiran/Opcon",
    isOpenSource: true,
  ),
  Experience(
    title: "Makefake - Javascript Library",
    description:
        "Make easier to create data for test, design and other development process needs data to continue fast.",
    position: "Developer",
    type: ExperienceType.SelfExperience,
    start: DateTime(2015, 4),
    end: DateTime(2016, 1),
    secondaryLink: "https://github.com/mahmuttaskiran/Opcon",
    isOpenSource: true,
  ),
];
