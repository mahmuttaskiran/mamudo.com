import 'package:mamudo_com/models/experience.dart';
import 'package:mamudo_com/models/sensitive_string.dart';

var tExperiences = [
  Experience(
      title: LanguageSensitiveString.enTr(
        "Path - Digital Experiences",
        "Path - Digital Experiences",
      ),
      position: LanguageSensitiveString.enTr(
        "Android Developer",
        "Android Geliştiricisi",
      ),
      type: ExperienceType.professionalExperience,
      start: DateTime(2021, 1),
      company: LanguageSensitiveString.en("Path - Digital Experiences"),
      secondaryLink: "https://www.path.com.tr"),
  Experience(
    title: LanguageSensitiveString.enTr(
      "Argeloji",
      "Argeloji",
    ),
    description: LanguageSensitiveString.enTr(
      "Developing BlueOperation's mobile application for Argeloji. BlueOperation offers RTLS solutions that can actively monitor the location of assets to optimize searching time in a wide range of area facilities such as Airports.",
      "Argeloji'nin bünyesindeki BlueOperation'ın mobil uygulamasını geliştirdim. BlueOperation, RTLS çözümleri sunan, havaalanları gibi geniş alan tesislerinde varlıkların arama sürecini optimize eden bir altyapı.",
    ),
    position: LanguageSensitiveString.enTr(
      "Mobile Application Developer",
      "Mobil Uygulama Geliştiricisi",
    ),
    type: ExperienceType.professionalExperience,
    assetImage: "assets/images/blueoperation.webp",
    start: DateTime(2019, 6),
    end: DateTime(2020, 7),
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
      "Polyingo is a mobile app where people can improve their vocabulary and improve their pronunciation by sharing videos about English words and sentences or watching videos shared by other people.",
      "Polyingo, insanların İngilizce kelimeler ve cümleler hakkında video paylaşarak ya da diğer insanların paylaştığı videoları izleyerek kelime haznelerini geliştirebilecekleri, telafuzlarını güçlendirebilecekleri bir mobil uygulama.",
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
      "Kotlin ve React-Native ile ayrı ayrı projeler geliştirerek yeni ve güncel teknolojileri öğrendiğim ilk tam zamanlı iş deneyimim.",
    ),
    location: LanguageSensitiveString.enTr(
      "Istanbul, Turkey",
      "İstanbul",
    ),
    start: DateTime(2017, 7),
    end: DateTime(2018, 5),
    type: ExperienceType.professionalExperience,
    secondaryLink: "http://cekirdekbilgisayar.com.tr/",
  ),
  Experience(
    title: LanguageSensitiveString.enTr(
      "Opcon - Mobile Application",
      "Opcon - Mobil uygulama",
    ),
    description: LanguageSensitiveString.enTr(
      "Opcon is a mobile application that its users can create profiles and messaging their contact. But it offers more than a standard messaging application, the difference between Opcon and other messaging application is that Opcon let its users manage their phones by sending notifier to each other.",
      "Opcon, kullanıcıların profil oluşturabildiği, mesajlaşabildiği bir uygulama. Peki farkı ne? Farkı ise, bir yandan mesajlaşırken diğer bir yandan mesajlaştığınız kişinin telefonunda meydana gelen bazı olaylardan haberdar olmanız. Nasıl mı? Tıpkı bir resim gönderir gibi, mesajlaştığınız kişiye bir “bildireç” göndererek, karşı tarafın da bu bildireci kabul etmesiyle birlikte, onun telefonuna (bildirecin içeriğine göre) belirlediğiniz bir kişiden arama geldiğinde bildirim almanıza ya da karşı taraf belirlediğiniz bir kişiyi aradığında bildirim almanıza ya da bu durumun aynısının mesajlar için geçerli hali. Tabii, yapabildikleriniz bunlarla sınırlı değil. Karşı tarafın telefonuna bir alarm eklemek (Saat 12:00'da O’nu uyar.), belli bir saatte ve tarihte belirlediğiniz bir yerde olduğundan emin olmak (X tarihinde, Y ile Z saatleri aralığında N konumuna M’ km|m kadar yakınsa O’na şunu hatırlat veya bana bildirim gönder.). Ve daha bir çok şey. Yapısı itibari ile Opcon, bir çok senaryonun uygulanabileceği bir uygulama.",
    ),
    position: LanguageSensitiveString.enTr(
      "Fullstack Developer",
      "Fullstack Developer",
    ),
    type: ExperienceType.selfExperience,
    start: DateTime(2016, 4),
    end: DateTime(2017, 10),
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
      "Developer",
      null,
    ),
    type: ExperienceType.selfExperience,
    start: DateTime(2018, 4),
    end: DateTime(2018, 5),
    secondaryLink: "https://github.com/mahmuttaskiran/Opcon",
    isOpenSource: true,
  ),
];
