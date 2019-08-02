class CardModelKategorie {
  String name;
  String image;

  CardModelKategorie({
    this.name,
    this.image,
  });

  static List<CardModelKategorie> allKategorie = <CardModelKategorie>[
    CardModelKategorie(
      image: "assets/psychologie.png",
      name: "Psychologie",
    ),
    CardModelKategorie(
      image: "assets/persoenlicheenwicklung.png",
      name: "Persönliche Entwicklung",
    ),
  ];
}
