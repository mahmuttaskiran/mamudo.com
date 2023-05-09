import 'package:mamudo_com/models/experience.dart';
import 'package:mamudo_com/models/sensitive_string.dart';

var tExperiences = [
  Experience(
      title: LanguageSensitiveString.enTr("Delivery Hero", "Delivery Hero"),
      position: LanguageSensitiveString.enTr("Senior Software Engineer", "Kıdemli yazılım mühendisi"),
      description: LanguageSensitiveString.enTr(
          "I was part of a team responsible for the development and improvement of Delivery Hero's mobile app, which is primarily built using Flutter. My role involved collaborating with team members, identifying areas for improvement, troubleshooting issues, and implementing new features to enhance the app's functionality and user experience.",
          "Delivery Hero'nun mobil uygulamarından birinin geliştirilmesi ve iyileştirilmesinden sorumlu bir ekip içerisinde yer alıyorum. Uygulama temel olarak Flutter kullanılarak geliştiriliyor. Görevim, ekip üyeleriyle işbirliği yapmak, iyileştirme alanlarını belirlemek, sorunları gidermek ve uygulamanın işlevselliğini ve kullanıcı deneyimini artırmak için yeni özellikler eklemek."),
      type: ExperienceType.professionalExperience,
      start: DateTime(2022, 8),
      company: LanguageSensitiveString.en("Delivery Hero"),
      secondaryLink: "https://www.deliveryhero.com/"),
  Experience(
      title: LanguageSensitiveString.enTr("OBSS", "OBSS"),
      description: LanguageSensitiveString.enTr(
          "I worked as an Android Application Developer at Akbank via OBSS, where I was outsourced to one of Turkey's largest banks. In this role, I was responsible for developing and contributing to the existing features of Akbank's native Android mobile application. Specifically, I developed a complete KYC (Know Your Customer) flow for the app, ensuring regulatory compliance and a seamless user experience.",
          "OBSS üzerinden Türkiye'nin en büyük bankalarından birine dış kaynak sağlanan Akbank'ta Android Uygulama Geliştirici olarak çalıştım. Bu rolde, Akbank'ın yerel Android mobil uygulamasının mevcut özelliklerine katkıda bulunmak ve geliştirmekten sorumluydum. Özellikle, uygulama için tam bir KYC (Müşteriyi Tanıma) akışı geliştirdim, düzenleyici uyumu ve sorunsuz bir kullanıcı deneyimi sağladım."),
      position: LanguageSensitiveString.enTr("Seniour Consultant", "Seniour Consultant"),
      type: ExperienceType.professionalExperience,
      start: DateTime(2021, 6),
      end: DateTime(2022, 8),
      company: LanguageSensitiveString.en("OBSS | Akbank"),
      secondaryLink: "https://obss.com.tr/"),
  Experience(
      title: LanguageSensitiveString.enTr(
        "Path - Digital Experiences",
        "Path - Digital Experiences",
      ),
      description: LanguageSensitiveString.enTr(
          "I was responsible for tuttur.com Android app's development and improvement. Implementation and ownership of new features and refactoring of the legacy codebase.",
          "Tuttur'un Android uygulamasının geliştirilmesi ve iyileştirilmesinden sorumluydum. Yeni özelliklerin eklenmesi ve mevcut kod tabanının yeniden düzenlenmesi gibi sorumluluklarım vardı."),
      position: LanguageSensitiveString.enTr(
        "Android Developer",
        "Android Geliştiricisi",
      ),
      type: ExperienceType.professionalExperience,
      start: DateTime(2021, 1),
      end: DateTime(2021, 6),
      company: LanguageSensitiveString.en("Path - Digital Experiences"),
      secondaryLink: "https://www.path.com.tr"),
  Experience(
    title: LanguageSensitiveString.enTr(
      "Argeloji",
      "Argeloji",
    ),
    description: LanguageSensitiveString.enTr(
      "For Argeloji, I developed the BlueOperation mobile app. BlueOperation is a mobile application that allows companies to actively monitor asset locations in large facilities such as airports and shopping malls, and enables them to track the tasks of their employees effectively.",
      "Argeloji için BlueOperation'ın mobil uygulamasını geliştirdim. BlueOperation, şitketlerin havaalanları ve AVM'ler gibi büyük tesislerde varlık konumlarını etkin bir şekilde izlemelerine ve çalışanlarının iş takibini yapabilecekleri bir mobil uygulama.",
    ),
    position: LanguageSensitiveString.enTr(
      "Mobile Application Developer",
      "Mobil Uygulama Geliştiricisi",
    ),
    type: ExperienceType.professionalExperience,
    assetImage: "assets/images/blueoperation.webp",
    start: DateTime(2019, 6),
    end: DateTime(2020, 7),
    playStoreLink: "https://play.google.com/store/apps/details?id=com.blueoperation_mobile",
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
      "An innovative, interactive language learning application developed using Flutter (client-side) and Go lang (back-end). Offers a dynamic platform to learn languages through videos, AI-assisted chats, and engaging games. Features include word history management, customizable notifications, proficiency level targeting, and accent variation for a comprehensive and personalized learning experience.",
      "Flutter ve Go ile geliştirdiğim, yenilikçi ve interaktif bir dil öğrenme deneyimi sunan bir platform. Kullanıcıların video izleyerek veya video paylaşarak, yapay zeka asistanları ile sohbet ederek, pratik oyunları oynayarak, özelleştirilmiş bildirimler ekleyerek dil öğrenmelerini sağlar.",
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
    appStoreLink: "https://apps.apple.com/us/app/polyingo/id1462656360?app=itunes&ign-mpt=uo%3D4",
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
      "Developed a social media mobile application using React-Native for cross-platform deployment, while also gaining hands-on experience in Java and Kotlin. This role provided invaluable exposure to various programming languages and frameworks, highlighting adaptability and versatility in the field of mobile application development.",
      "Java ve Kotlin ile mobil uygulama geliştirdim, aynı zamanda React-Native ile çarpraz platform uygulama geliştirme deneyimi elde ettiğim ilk tam zamanlı işim.",
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
      "An open-source mobile messaging application developed in Java, offering users the unique ability to manage and control their devices through notifier-based interactions. As my first mobile application project, Opcon showcases proficiency in Java development and innovative thinking in creating user-centric, device management solutions.",
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
