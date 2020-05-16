import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Blog {
  String title;
  String content;
  IconData icon;
  String link;

  Blog({
    @required this.title,
    @required this.content,
    this.icon,
    this.link,
  });
}

var blogs = [
  Blog(
    title: "JobScheduler",
    content:
        "Tekrarlayan veya spesifik koşullar altında yürütülen işlemler, Android mimarisinde problemlere çözüm üretmek için sıklıkla kullanılır. JobScheduler, Android Lolipop ile birlikte, bu tip işlemleri en az maliyetle gerçeleştirmek için geliştirilmiş API’dir.",
    link:
        "https://medium.com/@taskiranmahmut/nedir-ne-de%C4%9Fildir-1cecf8c9db3c",
  ),
  Blog(
    title: "Opcon: Bir uygulamanın evrimi",
    content:
        "Mobil programlamaya giriş yapmayı planladığımda fark etmiştim ki öğrenmenin en hızlı yolu bir şeyler yazmaktır. Bir programcı, yeni bir dil ya da platform öğrenirken, bir şeyler karalamalı, karalanan kodu test etmeli, basit bir şey karalarken bile yüzlerce hata almaktan korkmamalı.",
    link:
        "https://medium.com/@taskiranmahmut/opcon-bir-uygulaman%C4%B1n-evrimi-db9c0cabfb5e",
  ),
  Blog(
    title: "Evernote — Android Job",
    content:
        "Android-Job kütüphanesi, JobScheduler sistem servisinin SDK 14 ve sonrası için geliştirilmiş simulasyonudur. Kalabalık ortamlarda canınız sıkıldığında, çevrenizdeki insanlara bunu belli etmemek için kullandığınız sosyolojik stratejilerden herhangi biri değildir. Bu çatı, JobScheduler’in neredeyse bütün işlevselliğini sunar ve implementasyonu daha kolaydır.",
    link:
        "https://medium.com/@taskiranmahmut/evernote-android-job-7a6d4477edc3",
  ),
  Blog(
    title: "Hello, World!",
    content:
        "Dennis Ritchie’i anarak -geleneklere bağlı kalarak- başlıyorum İlk blogumun ilk yazısına. ‘Hello, world’un özel bir anlamı vardır bilişim camiasında. Tabiri caizse, programcının ‘bismillah’ıdır. Peki nereden geliyor bu gelenek? Dennis R., C programlama dilini geliştirdikten sonra, bu programlama diline ilk örneği şu şekilde vermiştir",
    link: "https://medium.com/@taskiranmahmut/hello-world-85da94c96bc2",
  ),
];

class BlogsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        for (final f in blogs)
          Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: Text(f.title),
                subtitle: Text(
                  f.content,
                  maxLines: 2,
                ),
                leading: CircleAvatar(
                  backgroundColor: Theme.of(context).accentColor,
                  child: Icon(FontAwesomeIcons.mediumM),
                ),
              ),
              Divider(
                height: .5,
                color: Colors.grey,
              ),
            ],
          ),
      ],
    );
  }
}
