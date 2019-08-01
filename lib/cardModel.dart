enum Kategorie { empfehlung, beliebt, neu }

class CardModel {
  final String author;
  final String title;
  final String subtitle;
  final String image;
  static final String vimage = "assets/";
  final Kategorie kategorie;

  static List loadCards(Kategorie kata) {
    List allCards = <CardModel>[
      CardModel(
        author: "Tobias Beck",
        title: "Unbox your Life!",
        subtitle: "Bewohnerfrei: Das Geheimnis für deinen Erfolg im Leben",
        image: vimage + "tobiasbeck.jpg",
        kategorie: Kategorie.empfehlung,
      ),
      CardModel(
        author: "Donald Sull, Kathle",
        title: "Simple Rules",
        subtitle: "Einfache Regeln für komplexe Situationen",
        image: vimage + "donaldsull.jpg",
        kategorie: Kategorie.empfehlung,
      ),
      CardModel(
        author: "Ichiro Kishimi",
        title: "Du musst nicht von allen gemocht werden",
        subtitle: "Vom Mut, sich nicht zu verbiegen",
        image: vimage + "ichirokishimi.jpg",
        kategorie: Kategorie.empfehlung,
      ),
      CardModel(
        author: "Hans-Otto Thomashoff",
        title: "Das gelungene Ich",
        subtitle: "Die vier Säulen der Hirnforschung für ein erfülltes Leben",
        image: vimage + "hansotto.jpg",
        kategorie: Kategorie.empfehlung,
      ),
      CardModel(
        author: "Doris Märtin",
        title: "Habitus",
        subtitle: "Sind Sie bereit für den Spring nach ganz oben?",
        image: vimage + "dorismaertin.jpg",
        kategorie: Kategorie.empfehlung,
      ),
      CardModel(
        author: "Jessica Braun",
        title: "Atmen",
        subtitle: "Wie die einfachste Sache der Welt unser Leben verändert",
        image: vimage + "jessicabraun.jpg",
        kategorie: Kategorie.beliebt,
      ),
      CardModel(
          author: "Esther Perel",
          title: "Die Macht der Affäre",
          subtitle: "Warum wir betrügen und was wir daraus lernen können",
          image: vimage + "estherperel.jpg",
          kategorie: Kategorie.beliebt),
      CardModel(
          author: "Ulrich Schnabel",
          title: "Zuversicht",
          subtitle:
              "Die Kraft der inneren Freiheit und warum sie heute wichtiger ist dfff ",
          image: vimage + "ulrichschnabel.jpg",
          kategorie: Kategorie.beliebt),
      CardModel(
          author: "Stanley Rosenberg",
          title: "Der Selbstheilungfff",
          subtitle:
              "So bringt der Vagus-Nerv Psyche und Körper ins Gleichgefff",
          image: vimage + "stanleyrosenberg.jpg",
          kategorie: Kategorie.beliebt),
      CardModel(
        author: "Michael Zimmermafff",
        title: "AChtsamkeit",
        subtitle: "Ein buddhistisches Konzept erobert die Wissenschaft",
        image: vimage + "michaelzimmermann.jpg",
        kategorie: Kategorie.beliebt,
      )
    ];
    return allCards.where((p) {
      return p.kategorie == kata;
    }).toList();
  }

  CardModel({
    this.author,
    this.title,
    this.subtitle,
    this.image,
    this.kategorie,
  });
}

class TitleCardModel {
  String title;
  String subtitle;

  TitleCardModel({
    this.title,
    this.subtitle,
  });

  static titleCards(Kategorie kata) {
    switch (kata) {
      case Kategorie.empfehlung:
        {
          return TitleCardModel(
            title: "Empfehlungen für dich",
            subtitle: "Diese Titel könnten dir gefallen",
          );
        }
        break;
      case Kategorie.beliebt:
        {
          return TitleCardModel(
            title: "Beliebt",
            subtitle: "Die populärsten Titel bei Blinkest",
          );
        }
        break;

      case Kategorie.neu:
        {
          return TitleCardModel(
            title: "Neu bei Blinkist",
            subtitle: "Frisch eingetroffen diese Woche",
          );
        }
        break;
    }
  }
}
